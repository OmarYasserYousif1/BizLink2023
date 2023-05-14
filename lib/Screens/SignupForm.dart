import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/LoginForm.dart';

import 'package:flutter_application_1/comm/comHelper.dart';
import 'package:flutter_application_1/comm/genTextFormField.dart';
import '../DatabaseHandler/DbHelper.dart';
import '../Model/UserModel.dart';

class SignupForm extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _formKey = new GlobalKey<FormState>();

  final _conUserId = TextEditingController();
  final _conUserName = TextEditingController();
  final _conEmail = TextEditingController();
  final _conPassword = TextEditingController();
  final _conCPassword = TextEditingController();
  var dbHelper;

  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper();
  }

  signUp() async {
    String uid = _conUserId.text;
    String uname = _conUserName.text;
    String email = _conEmail.text;
    String passwd = _conPassword.text;
    String cpasswd = _conCPassword.text;

    if (_formKey.currentState.validate()) {
      if (passwd != cpasswd) {
        alertDialog(context, 'Password Mismatch');
      } else {
        _formKey.currentState.save();

        UserModel uModel = UserModel(uid, uname, email, passwd);
        await dbHelper.saveData(uModel).then((userData) {
          alertDialog(context, "Successfully Saved");
          print(uid);
          print(uname);
          print(email);
          print(passwd);
          print(cpasswd);
          Navigator.push(
              context, MaterialPageRoute(builder: (_) => LoginForm()));
        }).catchError((error) {
          print(error);
          alertDialog(context, "Error: Data Save Fail");
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup'),
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("lib/assets/Logo (2).png"),
                    ),
                    getTextFormField(
                        controller: _conUserId,
                        icon: Icons.person,
                        hintName: 'User ID'),
                    SizedBox(height: 10.0),
                    getTextFormField(
                        controller: _conUserName,
                        icon: Icons.person_outline,
                        inputType: TextInputType.name,
                        hintName: 'User Name'),
                    SizedBox(height: 10.0),
                    getTextFormField(
                        controller: _conEmail,
                        icon: Icons.email,
                        inputType: TextInputType.emailAddress,
                        hintName: 'Email'),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conPassword,
                      icon: Icons.lock,
                      hintName: 'Password',
                      isObscureText: true,
                    ),
                    SizedBox(height: 10.0),
                    getTextFormField(
                      controller: _conCPassword,
                      icon: Icons.lock,
                      hintName: 'Confirm Password',
                      isObscureText: true,
                    ),
                    Container(
                      margin: EdgeInsets.all(30.0),
                      width: double.infinity,
                      child: TextButton(
                        child: Text(
                          'Signup',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: signUp,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Does you have account? '),
                          TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.brown,
                            ),
                            child: Text('Sign In'),
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => LoginForm()),
                                  (Route<dynamic> route) => false);
                            },
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
