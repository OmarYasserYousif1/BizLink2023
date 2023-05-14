import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/HomeForm.dart';

import 'package:flutter_application_1/modules/business%20owners/addproduct.dart';
import 'package:flutter_application_1/modules/business%20owners/ads_screen.dart';
import 'package:flutter_application_1/modules/favoritescreen.dart';

class businessownerscreen extends StatefulWidget {
  @override
  State<businessownerscreen> createState() => _businessownerscreenState();
}

class _businessownerscreenState extends State<businessownerscreen> {
  int _counter = 0;
  int _rating = 0;
  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(248, 249, 142, 103),
          title: Text('homescreen'),
          centerTitle: true,
        ),
        body: Container(
          color: Color.fromARGB(202, 227, 158, 133),
          child: Column(
            children: [
              Image.asset("lib/assets/Logo (2).png"),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddProductScreen()),
                              );
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.add,
                                    size: 50.0,
                                  ),
                                  Text(
                                    "Add",
                                    style: TextStyle(
                                        fontSize: 25.5,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color.fromARGB(248, 249, 142, 103),
                              ),
                            ),
                          ),
                        ),
                      ),

                      /*   Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.remove,
                                  size: 70.0,
                                ),
                                Text(
                                  "Remove",
                                  style: TextStyle(
                                      fontSize: 25.5,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color.fromARGB(248, 249, 142, 103),
                            ),
                          ),
                        ),
                      ),*/
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              /*Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.production_quantity_limits_sharp,
                                  size: 50.0,
                                ),
                                Text(
                                  "Product List",
                                  style: TextStyle(
                                      fontSize: 25.5,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              color: Color.fromARGB(248, 249, 142, 103),
                            ),
                          ),
                        ),
                      ),
                      /* Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () {
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => favoritescreen(
                                          _counter, _resetCounter, _rating),
                                    ),
                                  );
                                },
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.black,
                                ),
                              );
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.analytics,
                                    size: 50.0,
                                  ),
                                  Text(
                                    "Analystics",
                                    style: TextStyle(
                                        fontSize: 25.5,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color.fromARGB(248, 249, 142, 103),
                              ),
                            ),
                          ),
                        ),
                      ),*/
                    ],
                  ),
                ),
              ),*/
              SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const adsscreen()),
                              );
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.rocket,
                                    size: 50.0,
                                  ),
                                  Text(
                                    "ads",
                                    style: TextStyle(
                                        fontSize: 25.5,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color.fromARGB(248, 249, 142, 103),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomeForm()),
                              );
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.edit,
                                    size: 50.0,
                                  ),
                                  Text(
                                    "Edit Profile",
                                    style: TextStyle(
                                        fontSize: 25.5,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0),
                                color: Color.fromARGB(248, 249, 142, 103),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
