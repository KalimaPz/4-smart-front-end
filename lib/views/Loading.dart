import 'package:eldercare/actions/Fetch.dart';
import 'package:flutter/material.dart';

class Loading extends StatefulWidget {
  Loading({Key key}) : super(key: key);

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  Future jsonData;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    jsonData = Fetch.getData();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Scaffold(
         body: Center(
           child: FutureBuilder(
           future: jsonData,
           builder: (context, snapshot) {
             if(snapshot.hasData){
               return Text(snapshot.data[0].content[0].header);
             } else {
               return Text('No Data');
             }
         },)),
       ),
    );
  }
}