import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/modules/commenting%20system/assasmisrcommentscreen.dart';
import 'package:flutter_application_1/modules/favoritescreen.dart';
import 'package:flutter_application_1/shared/smalltext.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class assasmisr extends StatefulWidget {
  const assasmisr({Key key}) : super(key: key);

  @override
  State<assasmisr> createState() => _assasmisrState();
}

_launchurl() async {
  const url = "https://www.furnitureofegypt.com/ar/salon.html";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "could not launch url";
  }
}

class _assasmisrState extends State<assasmisr> {
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
        title: Text("assasmisr"),
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
                      "lib/assets/ASSAMISR_SALON.PNG",
                      height: 60,
                    ),
                    Column(
                      children: [
                        Text(
                          "ASSAMISR_SALON",
                          style: TextStyle(fontSize: 17.0),
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
                              "price:53,000 💲",
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
                            print("you ASSAMISR_SALON price ");
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
                      "lib/assets/ASSASMISR_SOFRA.PNG",
                      height: 70,
                    ),
                    Column(
                      children: [
                        Text(
                          "ASSASMISR_SOFRA",
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
                              "price:15,000 💲",
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
                            print("you ASSASMISR_SOFRA price ");
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
                          builder: (context) => const assasmisrcommentscreen()),
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
