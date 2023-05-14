import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/LoginForm.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Add your initialization code here
    // For example, you can load data from an API or set a timer
    Future.delayed(Duration(seconds: 5)).then((_) {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginForm()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(95, 171, 139, 86),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/background image.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                Container(
                    height: 150,
                    width: 300,
                    child: Image.asset("lib/assets/Logo (2).png")),
                SizedBox(
                  height: 200,
                ),
                Text(
                  'The most successful entrepreneurs',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'I know are optimistic.',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Its part of job description',
                  style: TextStyle(
                    fontSize: 40.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
