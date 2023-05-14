import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/modules/commenting%20system/ikeacommentscreen.dart';
import 'package:flutter_application_1/modules/favoritescreen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../shared/smalltext.dart';

class Ikea extends StatefulWidget {
  const Ikea({Key key}) : super(key: key);

  @override
  State<Ikea> createState() => _IkeaState();
}

launchurl() async {
  const url = "https://www.ikea.com/eg/ar/";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "could not launch url";
  }
}

class _IkeaState extends State<Ikea> {
  int _counter = 0;
  int _rating = 0;
  int _rating1 = 0;
  int _rating2 = 0;
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

  void _setRating1(int rating) {
    setState(() {
      _rating1 = _rating1;
    });
  }

  void _setRating2(int rating) {
    setState(() {
      _rating2 = _rating2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 196, 179),
      appBar: AppBar(
        title: Text("Ikea screen"),
        centerTitle: true,
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
                      "lib/assets/Ikea_deskchair.png",
                      height: 70,
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "Ikea_deskchair",
                              style: TextStyle(fontSize: 25.0),
                            ),
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
                        Text(
                          "price:15,000 💲",
                          style: TextStyle(fontSize: 20.0),
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
                            print("you rated Ikea_deskchair  price ");
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
                      "lib/assets/ikea_table.png",
                      height: 70,
                    ),
                    Column(
                      children: [
                        Text(
                          "ikea_table",
                          style: TextStyle(fontSize: 25.0),
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
                              "price:13,500 💲",
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
                            print("you rated ikea_table price ");
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
                  onPressed: launchurl,
                  icon: Icon(Icons.link),
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ikeacommentingscreen()),
                    );
                  },
                  icon: Icon(Icons.comment),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
