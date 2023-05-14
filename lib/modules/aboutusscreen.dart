import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class aboutusscreen extends StatefulWidget {
  const aboutusscreen({Key key}) : super(key: key);

  @override
  State<aboutusscreen> createState() => _aboutusscreenState();
}

class _aboutusscreenState extends State<aboutusscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 236, 182, 163),
      appBar: AppBar(
        title: Text("about us screen"),
        centerTitle: true,
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image(
                  image: AssetImage("lib/assets/Logo (2).png"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
