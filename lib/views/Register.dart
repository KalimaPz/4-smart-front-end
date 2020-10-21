import 'package:eldercare/actions/CreateUser.dart';
import 'package:eldercare/components/CustomizableButton.dart';
import 'package:eldercare/views/MainMenu.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  // final Future lessonData;
  Register({
    Key key,
    //  this.lessonData
  }) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final String headerInstruct = "โปรดกรอกรายละเอียดของท่าน";
  final double formGap = 50;

  TextEditingController firstNameController;
  TextEditingController lastNameController;
  TextEditingController ageController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    ageController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    firstNameController.dispose();
    lastNameController.dispose();
    ageController.dispose();
    super.dispose();
  }

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
                        CreateUser.createUser(
                            firstName: firstNameController.text.toString(),
                            lastName: lastNameController.text.toString(),
                            age: ageController.text.toString());
                        // Navigator.pushAndRemoveUntil(
                        //     context,
                        //     MaterialPageRoute(
                        //       builder: (context) => MainMenu(),
                        //     ),
                        //     (route) => false);
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
                  child: TextField(
                    controller: firstNameController,
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
                  child: TextField(
                    controller: lastNameController,
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
                  child: TextField(
                    controller: ageController,
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
