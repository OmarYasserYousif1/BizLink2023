import 'package:flutter/material.dart';

import 'package:flutter_application_1/comm/genTextFormField.dart';
import 'package:flutter_application_1/modules/custumers/customerhomepage.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../DatabaseHandler/DbHelper.dart';
import '../Model/UserModel.dart';
import '../comm/comHelper.dart';
import 'HomeForm.dart';
import 'SignupForm.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  Future<SharedPreferences> _pref = SharedPreferences.getInstance();
  final _formKey = new GlobalKey<FormState>();

  final _conUserId = TextEditingController();
  final _conPassword = TextEditingController();
  var dbHelper;

  @override
  void initState() {
    super.initState();
    dbHelper = DbHelper();
  }

  login() async {
    String uid = _conUserId.text;
    String passwd = _conPassword.text;

    if (uid.isEmpty) {
      alertDialog(context, "Please Enter User ID");
    } else if (passwd.isEmpty) {
      alertDialog(context, "Please Enter Password");
    } else {
      await dbHelper.getLoginUser(uid, passwd).then((userData) {
        if (userData != null) {
          setSP(userData).whenComplete(() {
            Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => CustumerHomePage()),
                (Route<dynamic> route) => false);
          });
        } else {
          alertDialog(context, "Error: User Not Found");
        }
      }).catchError((error) {
        print(error);
        alertDialog(context, "Error: Login Fail");
      });
    }
  }

  Future setSP(UserModel user) async {
    final SharedPreferences sp = await _pref;

    sp.setString("user_id", user.user_id);
    sp.setString("user_name", user.user_name);
    sp.setString("email", user.email);
    sp.setString("password", user.password);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login '),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Center(
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
                      controller: _conPassword,
                      icon: Icons.lock,
                      hintName: 'Password',
                      isObscureText: true,
                    ),
                    Container(
                      margin: EdgeInsets.all(30.0),
                      width: double.infinity,
                      child: TextButton(
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: login,
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
                          Text('Does not have account? '),
                          TextButton(
                            style: TextButton.styleFrom(
                              primary: Colors.brown,
                            ),
                            child: Text('Signup'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (_) => SignupForm()));
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
