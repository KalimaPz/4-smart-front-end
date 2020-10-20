import 'package:eldercare/components/CustomizableButton.dart';
import 'package:eldercare/views/MainMenu.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Register extends StatefulWidget {
  Register({Key key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register>
    with SingleTickerProviderStateMixin {
  final String headerInstruct = "โปรดกรอกรายละเอียดของท่าน";
  final double formGap = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        centerTitle: true,
        title: Text('ลงชื่อเข้าใช้งาน'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildForm(),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: SizedBox(
                    width: 300,
                    child: CustomizableButton(
                      text: 'ดำเนินการต่อ',
                      callback: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainMenu(),
                            ),
                            (route) => false);
                      },
                      backgroundColor: Colors.blue,
                      addedHeight: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildForm() {
    return Container(
      padding: EdgeInsets.all(30),
      // decoration: BoxDecoration(border: Border.all()),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text('$headerInstruct', style: TextStyle(fontSize: 26)),
          ),
          SizedBox(
            height: formGap,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('ชื่อ : ', style: TextStyle(fontSize: 24)),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
            ],
          ),
          SizedBox(
            height: formGap,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('นามสกุล : ', style: TextStyle(fontSize: 24)),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
            ],
          ),
          SizedBox(
            height: formGap,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('อายุ : ', style: TextStyle(fontSize: 24)),
              SizedBox(
                  width: 200,
                  height: 50,
                  child: TextFormField(
                    autofocus: true,
                    scrollPadding: EdgeInsets.all(10),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30))),
                  )),
            ],
          ),
          SizedBox(
            height: formGap,
          ),
        ],
      ),
    );
  }
}
