import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/modules/commenting%20system/townteamcommenting.dart';
import 'package:flutter_application_1/shared/smalltext.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../favoritescreen.dart';

class townteamscreen extends StatefulWidget {
  const townteamscreen({Key key}) : super(key: key);

  @override
  State<townteamscreen> createState() => _townteamscreenState();
}

class _townteamscreenState extends State<townteamscreen> {
  _launchurl() async {
    const url = "https://www.facebook.com/TOWNTEAM";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "could not launch url";
    }
  }

  _launchurl2() async {
    const url = "https://www.instagram.com/townteam/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "could not launch url";
    }
  }

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
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => favoritescreen(
                      _counter, _resetCounter, _rating, _rating1, _rating2),
                ),
              );
            },
            icon: Icon(
              Icons.analytics,
              color: Colors.black,
            ),
          ),
        ],
        backgroundColor: Color.fromARGB(255, 152, 112, 97),
        title: Text("Welcome To Town Team "),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Image.asset("lib/assets/Logo (2).png"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color.fromARGB(248, 249, 142, 103),
              elevation: 10.0,
              child: Row(
                children: [
                  Image.asset(
                    "lib/assets/black pants.png",
                    height: 90,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Black Pants",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            width: 25.0,
                          ),
                        ],
                      ),
                      Row(children: [
                        SizedBox(height: 20),
                        IconButton(
                          icon: Icon(
                              _rating >= 1 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating(1),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating >= 2 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating(2),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating >= 3 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating(3),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating >= 4 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating(4),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating >= 5 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating(5),
                          iconSize: 20,
                        ),
                      ]),
                      Row(
                        children: [
                          Text(
                            "price:200 💲",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite),
                            color: Colors.black,
                            onPressed: _incrementCounter,
                            iconSize: 20,
                          ),
                        ],
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          switch (index) {
                            case 0:
                              return Icon(
                                Icons.money_off,
                                color: Colors.green,
                              );
                            case 1:
                              return Icon(
                                Icons.money_off,
                                color: Colors.green,
                              );
                            case 2:
                              return Icon(
                                Icons.money_off,
                                color: Colors.green,
                              );
                          }
                        },
                        onRatingUpdate: (rating) {
                          print(rating);
                          print("you rated price ");
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color.fromARGB(248, 249, 142, 103),
              elevation: 10.0,
              child: Row(
                children: [
                  Image.asset(
                    "lib/assets/black shirt.png",
                    height: 50,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Black shirt",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(children: [
                        SizedBox(height: 20),
                        IconButton(
                          icon: Icon(
                              _rating1 >= 1 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating1(1),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating1 >= 2 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating1(2),
                          iconSize: 15,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating1 >= 3 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating1(3),
                          iconSize: 15,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating1 >= 4 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating1(4),
                          iconSize: 15,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating1 >= 5 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating1(5),
                          iconSize: 15,
                        ),
                      ]),
                      Row(
                        children: [
                          Text(
                            "price:175 💲",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite),
                            color: Colors.black,
                            onPressed: _incrementCounter,
                            iconSize: 20,
                          ),
                        ],
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          switch (index) {
                            case 0:
                              return Icon(
                                Icons.money_off,
                                color: Colors.green,
                              );
                            case 1:
                              return Icon(
                                Icons.money_off,
                                color: Colors.green,
                              );
                            case 2:
                              return Icon(
                                Icons.money_off,
                                color: Colors.green,
                              );
                          }
                        },
                        onRatingUpdate: (rating) {
                          print(rating);
                          print("you rated price ");
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color.fromARGB(248, 249, 142, 103),
              elevation: 10.0,
              child: Row(
                children: [
                  Image.asset(
                    "lib/assets/blue hodie.png",
                    height: 90,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Blue hodie",
                                style: TextStyle(
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              IconButton(
                                icon: Icon(Icons.favorite),
                                color: Colors.black,
                                onPressed: _incrementCounter,
                                iconSize: 40,
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 25.0,
                          ),
                        ],
                      ),
                      Row(children: [
                        SizedBox(height: 20),
                        IconButton(
                          icon: Icon(
                              _rating2 >= 1 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating2(1),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating2 >= 2 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating2(2),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating2 >= 3 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating2(3),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating2 >= 4 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating2(4),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating2 >= 5 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating2(5),
                          iconSize: 20,
                        ),
                      ]),
                      Text(
                        "price:650 💲",
                        style: TextStyle(fontSize: 20.0),
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          switch (index) {
                            case 0:
                              return Icon(
                                Icons.money_off,
                                color: Colors.green,
                              );
                            case 1:
                              return Icon(
                                Icons.money_off,
                                color: Colors.green,
                              );
                            case 2:
                              return Icon(
                                Icons.money_off,
                                color: Colors.green,
                              );
                          }
                        },
                        onRatingUpdate: (rating) {
                          print(rating);
                          print("you rated price ");
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Color.fromARGB(248, 249, 142, 103),
              elevation: 10.0,
              child: Row(
                children: [
                  Image.asset(
                    "lib/assets/blue shirt.png",
                    height: 90,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Blue Shirts",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(children: [
                        SizedBox(height: 20),
                        IconButton(
                          icon: Icon(
                              _rating3 >= 1 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating3(1),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating3 >= 2 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating3(2),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating3 >= 3 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating3(3),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating3 >= 4 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating3(4),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating3 >= 5 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating3(5),
                          iconSize: 20,
                        ),
                      ]),
                      Row(
                        children: [
                          Text(
                            "price:175 💲",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite),
                            color: Colors.black,
                            onPressed: _incrementCounter,
                            iconSize: 40,
                          ),
                        ],
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          switch (index) {
                            case 0:
                              return Icon(
                                Icons.money_off,
                                color: Colors.green,
                              );
                            case 1:
                              return Icon(
                                Icons.money_off,
                                color: Colors.green,
                              );
                            case 2:
                              return Icon(
                                Icons.money_off,
                                color: Colors.green,
                              );
                          }
                        },
                        onRatingUpdate: (rating) {
                          print(rating);
                          print("you rated blue shirt price ");
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: [
              smalltext(
                color: Colors.black,
                fontsize: 25,
                alignment: Alignment.center,
                text: "contact us for more",
              ),
              IconButton(
                color: Colors.blue,
                iconSize: 30.0,
                onPressed: _launchurl,
                icon: Icon(Icons.facebook),
              ),
              IconButton(
                color: Colors.pink,
                iconSize: 30.0,
                onPressed: _launchurl2,
                icon: Icon(Icons.camera),
              ),
            ],
          ),
          Row(
            children: [
              smalltext(
                color: Colors.black,
                fontsize: 25,
                alignment: Alignment.center,
                text: "contact us for more",
              ),
              IconButton(
                color: Colors.pink,
                iconSize: 30.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const townteamcommenting()),
                  );
                },
                icon: Icon(Icons.comment),
              ),
            ],
          )
        ],
      )),
    );
  }
}
