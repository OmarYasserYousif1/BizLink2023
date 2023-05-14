import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/modules/commenting%20system/blackjackcommentingscreen.dart';
import 'package:flutter_application_1/modules/favoritescreen.dart';
import 'package:flutter_application_1/shared/smalltext.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class BlackJackscreen extends StatefulWidget {
  const BlackJackscreen({Key key}) : super(key: key);

  @override
  State<BlackJackscreen> createState() => _BlackJackscreenState();
}

class _BlackJackscreenState extends State<BlackJackscreen> {
  _launchurl() async {
    const url = "https://www.facebook.com/BLACKJACKEGYPT";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "could not launch url";
    }
  }

  _launchurl2() async {
    const url = "https://www.instagram.com/blackjacktogo/";
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
  int _rating4 = 0;
  int _rating5 = 0;

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

  void _setRating4(int rating4) {
    setState(() {
      _rating4 = rating4;
    });
  }

  void _setRating5(int rating5) {
    setState(() {
      _rating5 = rating5;
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
        title: Text("BlackJack"),
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
                    "lib/assets/blackjack_berry.png",
                    height: 60,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "blackjack_berry",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
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
                            "price:50 💲",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite),
                            color: Colors.black,
                            onPressed: _incrementCounter,
                            iconSize: 30,
                          ),
                        ],
                      ),
                      RatingBar.builder(
                        itemSize: 30,
                        initialRating: 5,
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
                          print("you rated blackjack_berry price ");
                        },
                      )
                    ],
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
                    "lib/assets/blackjack_caramel.png",
                    height: 90,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "blackjack_caramel",
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
                          onPressed: () => _setRating(1),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating1 >= 2 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating1(2),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating1 >= 3 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating1(3),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating1 >= 4 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating1(4),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating1 >= 5 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating1(5),
                          iconSize: 20,
                        ),
                      ]),
                      Row(
                        children: [
                          Text(
                            "price:60 💲",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite),
                            color: Colors.black,
                            onPressed: _incrementCounter,
                            iconSize: 30,
                          ),
                        ],
                      ),
                      RatingBar.builder(
                        initialRating: 5,
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
                          print("you rated blackjack_caramel price ");
                        },
                      )
                    ],
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
                    "lib/assets/blackjack_kewi.png",
                    height: 80,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "blackjack_kewi",
                            style: TextStyle(
                                fontSize: 25.0, fontWeight: FontWeight.bold),
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
                            "price:60💲",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite),
                            color: Colors.black,
                            onPressed: _incrementCounter,
                            iconSize: 30,
                          ),
                        ],
                      ),
                      RatingBar.builder(
                        itemSize: 25,
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
                          print("you rated blackjack_kewi price ");
                        },
                      )
                    ],
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
                    "lib/assets/blackjack_lemonsoda.png",
                    height: 90,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "blackjack_lemonsoda ",
                            style: TextStyle(
                                fontSize: 20.0, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(children: [
                        SizedBox(height: 20),
                        IconButton(
                          icon: Icon(
                              _rating2 >= 1 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating(1),
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
                      Row(
                        children: [
                          Text(
                            "price:48 💲",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite),
                            color: Colors.black,
                            onPressed: _incrementCounter,
                            iconSize: 30,
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
                          print("you rated blackjack_lemonsoda price ");
                        },
                      )
                    ],
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
                    "lib/assets/blackjack_oreo.png",
                    height: 90,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "blackjack_oreo ",
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
                            "price:48 💲",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite),
                            color: Colors.black,
                            onPressed: _incrementCounter,
                            iconSize: 30,
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
                          print("you rated blackjack_oreo price ");
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
                    "lib/assets/blackjack_watermellon.png",
                    height: 70,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "blackjack_watermellon ",
                            style: TextStyle(
                                fontSize: 17.0, fontWeight: FontWeight.bold),
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
                              _rating4 >= 1 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating4(1),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating4 >= 2 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating4(2),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating4 >= 3 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating4(3),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating4 >= 4 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating4(4),
                          iconSize: 20,
                        ),
                        IconButton(
                          icon: Icon(
                              _rating4 >= 5 ? Icons.star : Icons.star_border),
                          color: Colors.black,
                          onPressed: () => _setRating4(5),
                          iconSize: 20,
                        ),
                      ]),
                      Row(
                        children: [
                          Text(
                            "price:48 💲",
                            style: TextStyle(fontSize: 20.0),
                          ),
                          IconButton(
                            icon: Icon(Icons.favorite),
                            color: Colors.black,
                            onPressed: _incrementCounter,
                            iconSize: 30,
                          ),
                        ],
                      ),
                      RatingBar.builder(
                        initialRating: 3,
                        itemCount: 1,
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
                          print("you rated blackjack_watermellon price ");
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
                fontsize: 17,
                alignment: Alignment.center,
                text: "We Would Like To Knew your Comment",
              ),
              IconButton(
                color: Colors.black,
                iconSize: 30.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const blackjackcommentingscreen()),
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
