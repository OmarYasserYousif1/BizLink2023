import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/modules/custumers/cityCrepescreen.dart';
import 'package:flutter_application_1/modules/foodscreens/1650screen.dart';
import 'package:flutter_application_1/modules/foodscreens/BlackJackscreen.dart';
import 'package:flutter_application_1/modules/foodscreens/PapaJohns.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class foodscreen extends StatefulWidget {
  const foodscreen({Key key}) : super(key: key);

  @override
  State<foodscreen> createState() => _foodscreenState();
}

class _foodscreenState extends State<foodscreen> {
  int _counter = 0;
  int _rating = 0;
  int _rating1 = 0;
  int _rating2 = 0;
  int _rating3 = 0;

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

  void _setRating2(int rating2) {
    setState(() {
      _rating2 = rating2;
    });
  }

  void _setRating3(int rating3) {
    setState(() {
      _rating3 = rating3;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 196, 179),
      appBar: AppBar(
        title: Text("foodscreen"),
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
                    MaterialPageRoute(
                        builder: (context) => const cityCrepescreen()),
                  );
                },
                child: Card(
                  color: Color.fromARGB(248, 249, 142, 103),
                  elevation: 10.0,
                  child: Row(
                    children: [
                      Image.asset(
                        "lib/assets/Crepe.png",
                        height: 70,
                      ),
                      Column(
                        children: [
                          Text(
                            "City Crepe",
                            style: TextStyle(fontSize: 25.0),
                          ),
                          Row(
                            children: [
                              Text("Category:Fast Food"),
                              IconButton(
                                icon: Icon(Icons.favorite),
                                color: Colors.black,
                                onPressed: _incrementCounter,
                                iconSize: 30,
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
                    MaterialPageRoute(
                        builder: (context) => const cofferostor()),
                  );
                },
                child: Card(
                  color: Color.fromARGB(248, 249, 142, 103),
                  elevation: 10.0,
                  child: Row(
                    children: [
                      Image.asset(
                        "lib/assets/cofferostor.png",
                        height: 70,
                      ),
                      Column(
                        children: [
                          Text(
                            "1650 cofferostor",
                            style: TextStyle(fontSize: 25.0),
                          ),
                          Row(
                            children: [
                              Text("Category:caffe & restorant"),
                              IconButton(
                                icon: Icon(Icons.favorite),
                                color: Colors.black,
                                onPressed: _incrementCounter,
                                iconSize: 30,
                              ),
                            ],
                          ),
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
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const BlackJackscreen()),
                  );
                },
                child: Card(
                  color: Color.fromARGB(248, 249, 142, 103),
                  elevation: 10.0,
                  child: Row(
                    children: [
                      Image.asset(
                        "lib/assets/blackjack.png",
                        height: 60,
                      ),
                      Column(
                        children: [
                          Text(
                            "BlackJack coffeshop",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          Row(
                            children: [
                              Text("Category:caffe & restorant"),
                              IconButton(
                                icon: Icon(Icons.favorite),
                                color: Colors.black,
                                onPressed: _incrementCounter,
                                iconSize: 30,
                              ),
                            ],
                          ),
                          Row(children: [
                            SizedBox(height: 20),
                            IconButton(
                              icon: Icon(_rating2 >= 1
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating2(1),
                              iconSize: 20,
                            ),
                            IconButton(
                              icon: Icon(_rating2 >= 2
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating2(2),
                              iconSize: 20,
                            ),
                            IconButton(
                              icon: Icon(_rating2 >= 3
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating2(3),
                              iconSize: 20,
                            ),
                            IconButton(
                              icon: Icon(_rating2 >= 4
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating2(4),
                              iconSize: 20,
                            ),
                            IconButton(
                              icon: Icon(_rating2 >= 5
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating2(5),
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
                    MaterialPageRoute(builder: (context) => const PapaJohns()),
                  );
                },
                child: Card(
                  color: Color.fromARGB(248, 249, 142, 103),
                  elevation: 10.0,
                  child: Row(
                    children: [
                      Image.asset(
                        "lib/assets/Papa_John's_Logo.png",
                        height: 40,
                      ),
                      Column(
                        children: [
                          Text(
                            "Papa Johns",
                            style: TextStyle(fontSize: 15.0),
                          ),
                          Row(
                            children: [
                              Text("Category:Pizza restorant"),
                              IconButton(
                                icon: Icon(Icons.favorite),
                                color: Colors.black,
                                onPressed: _incrementCounter,
                                iconSize: 30,
                              ),
                            ],
                          ),
                          Row(children: [
                            SizedBox(height: 20),
                            IconButton(
                              icon: Icon(_rating3 >= 1
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating3(1),
                              iconSize: 20,
                            ),
                            IconButton(
                              icon: Icon(_rating3 >= 2
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating3(2),
                              iconSize: 20,
                            ),
                            IconButton(
                              icon: Icon(_rating3 >= 3
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating3(3),
                              iconSize: 20,
                            ),
                            IconButton(
                              icon: Icon(_rating3 >= 4
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating3(4),
                              iconSize: 20,
                            ),
                            IconButton(
                              icon: Icon(_rating3 >= 5
                                  ? Icons.star
                                  : Icons.star_border),
                              color: Colors.black,
                              onPressed: () => _setRating3(5),
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
