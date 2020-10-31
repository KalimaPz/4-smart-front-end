import 'package:eldercare/actions/CreateUser.dart';
import 'package:eldercare/components/CustomizableButton.dart';
import 'package:eldercare/views/MainMenu.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
  final _formKey = GlobalKey<FormState>();
  final String headerInstruct = "โปรดกรอกรายละเอียดของท่าน";
  final double formGap = 50;

  final _validate = false;

  TextEditingController firstNameController;
  TextEditingController lastNameController;
  TextEditingController ageController;

  Future saveUserInfo(String firstname, String lastname) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    // await pref.setString();
    await prefs.setString('name', firstname);
    await prefs.setString('lname', lastname);
  }

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: buildForm(),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: SizedBox(
                  width: 300,
                  child: CustomizableButton(
                    text: 'ดำเนินการต่อ',
                    callback: () {
                      if (_formKey.currentState.validate()) {
                        CreateUser.createUser(
                            firstName: firstNameController.text.toString(),
                            lastName: lastNameController.text.toString(),
                            age: ageController.text.toString());
                        saveUserInfo(firstNameController.text.toString(),
                            lastNameController.text.toString());
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MainMenu(),
                            ),
                            (route) => false);
                      } else {
                        print('FORM NOT VALIDATE');
                      }
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
    );
  }

  Widget buildForm() {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text('$headerInstruct', style: TextStyle(fontSize: 26)),
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text('ชื่อ', style: TextStyle(fontSize: 24)),
          ),
          TextFormField(
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
            validator: (name) {
              if (name == null || name.isEmpty) {
                return 'กรุณากรอกชื่อ';
              }
              return null;
            },
            controller: firstNameController,
            decoration: InputDecoration(
                hintText: 'ชื่อ',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          Text('นามสกุล', style: TextStyle(fontSize: 24)),
          TextFormField(
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
            validator: (lastname) {
              if (lastname == null || lastname.isEmpty) {
                return 'กรุณากรอกนามสกุล';
              }
              return null;
            },
            controller: lastNameController,
            decoration: InputDecoration(
                hintText: 'นามสกุล',
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
          Text('อายุ', style: TextStyle(fontSize: 24)),
          TextFormField(
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 18),
            validator: (age) {
              if (age == null || age.isEmpty) {
                return 'กรุณากรอกอายุ';
              }
              return null;
            },
            keyboardType: TextInputType.number,
            controller: ageController,
            scrollPadding: EdgeInsets.all(10),
            decoration: InputDecoration(
                hintText: 'อายุ',
                contentPadding: EdgeInsets.all(20),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ],
      ),
    );
  }
}
