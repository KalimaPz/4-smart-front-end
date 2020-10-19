import 'dart:async';

import 'package:eldercare/actions/Fetch.dart';
import 'package:eldercare/models/Lesson.dart';
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Future lessonData;
  bool isLoadFinish = false;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 5),(){
      setState(() {
        isLoadFinish = true;
      });
    });
    lessonData = Fetch.getData();
  }

  @override
  Widget build(BuildContext context) {
    print(isLoadFinish);
    return Container(
       child: Scaffold(
         body: Center(
           child: FutureBuilder(
             future: lessonData,
             builder: (context, snapshot) {
               if(snapshot.hasData){
                 if(isLoadFinish != true){
                   return LinearProgressIndicator();
                 } else {
                   return Text('Complete');
                 }
               }
               else{
                 return Text('No Data');
               }
             },
           )),
       ),
    );
  }
}