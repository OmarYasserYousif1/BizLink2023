import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/modules/homedecoresscreen/Ikea.dart';
import 'package:flutter_application_1/modules/homedecoresscreen/assasmisr.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomeDecore extends StatefulWidget {
  const HomeDecore({Key key}) : super(key: key);

  @override
  State<HomeDecore> createState() => _HomeDecoreState();
}

class _HomeDecoreState extends State<HomeDecore> {
  int _counter = 0;
  int _rating = 0;
  int _rating1 = 0;
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  void _setRating(int rating) {
    setState(() {
      _rating = rating;
    });
  }

  void _setRating1(int rating1) {
    setState(() {
      _rating1 = rating1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 196, 179),
      appBar: AppBar(
        title: Text("HomeDecoreScreen"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("lib/assets/Logo (2).png"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const assasmisr()),
                  );
                },
                child: Card(
                  color: Color.fromARGB(248, 249, 142, 103),
                  elevation: 10.0,
                  child: Row(
                    children: [
                      Image.asset(
                        "lib/assets/ASSASMISR.PNG",
                        height: 70,
                      ),
                      Column(
                        children: [
                          Text(
                            "ASSASMISR",
                            style: TextStyle(fontSize: 25.0),
                          ),
                          Row(
                            children: [
                              Text("Category:forniture"),
                              IconButton(
                                icon: Icon(Icons.favorite),
                                color: Colors.black,
                                onPressed: _incrementCounter,
                                iconSize: 20,
                              ),
                            ],
                          ),
                          Row(children: [
                            SizedBox(height: 20),
                            IconButton(
                              icon: Icon(_rating >= 1
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating(1),
                              iconSize: 20,
                            ),
                            IconButton(
                              icon: Icon(_rating >= 2
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating(2),
                              iconSize: 20,
                            ),
                            IconButton(
                              icon: Icon(_rating >= 3
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating(3),
                              iconSize: 20,
                            ),
                            IconButton(
                              icon: Icon(_rating >= 4
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating(4),
                              iconSize: 20,
                            ),
                            IconButton(
                              icon: Icon(_rating >= 5
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating(5),
                              iconSize: 20,
                            ),
                          ]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Ikea()),
                  );
                },
                child: Card(
                  color: Color.fromARGB(248, 249, 142, 103),
                  elevation: 10.0,
                  child: Row(
                    children: [
                      Image.asset(
                        "lib/assets/ikea_logo.png",
                        height: 34,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Ikea EGYPT",
                                style: TextStyle(fontSize: 25.0),
                              ),
                              IconButton(
                                icon: Icon(Icons.favorite),
                                color: Colors.black,
                                onPressed: _incrementCounter,
                                iconSize: 20,
                              ),
                            ],
                          ),
                          Text("Category:sports & clothes"),
                          Row(children: [
                            SizedBox(height: 20),
                            IconButton(
                              icon: Icon(_rating1 >= 1
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating1(1),
                              iconSize: 20,
                            ),
                            IconButton(
                              icon: Icon(_rating1 >= 2
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating1(2),
                              iconSize: 20,
                            ),
                            IconButton(
                              icon: Icon(_rating1 >= 3
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating1(3),
                              iconSize: 20,
                            ),
                            IconButton(
                              icon: Icon(_rating1 >= 4
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating1(4),
                              iconSize: 20,
                            ),
                            IconButton(
                              icon: Icon(_rating1 >= 5
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating1(5),
                              iconSize: 20,
                            ),
                          ]),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
