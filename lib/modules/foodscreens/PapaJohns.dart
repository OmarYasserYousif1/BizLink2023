import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/modules/commenting%20system/papajohnscommentingscreen.dart';
import 'package:flutter_application_1/shared/smalltext.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../favoritescreen.dart';

class PapaJohns extends StatefulWidget {
  const PapaJohns({Key key}) : super(key: key);

  @override
  State<PapaJohns> createState() => _PapaJohnsState();
}

class _PapaJohnsState extends State<PapaJohns> {
  _launchurl() async {
    const url = "https://www.facebook.com/PapaJohnsEgypt";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "could not launch url";
    }
  }

  _launchurl2() async {
    const url = "https://www.instagram.com/papajohnsegypt/";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "could not launch url";
    }
  }

  _launchurl3() async {
    const url =
        "https://1650coffeeroaster.com/contact-us#437add07-f5cf-4984-bd7d-ad4aace77db8";
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
        title: Text("Papa Johns"),
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
                    "lib/assets/peppronipizza.png",
                    height: 60,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "peppronipizza",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
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
                            "price:75💲 S  100💲 M 170💲 F",
                            style: TextStyle(fontSize: 14.0),
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
                        itemSize: 30,
                        initialRating: 1,
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
                          print("you rated peppronipizza price ");
                        },
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
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
                    "lib/assets/piizabafflochickenboffers.png",
                    height: 60,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "piizabafflochickenboffers",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
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
                            "price:75💲 S  100💲 M 170💲 F",
                            style: TextStyle(fontSize: 14.0),
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
                          print("you rated piizabafflochickenboffers price ");
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
                    "lib/assets/pizza tuna.png",
                    height: 60,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "pizza tuna",
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
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
                      Row(
                        children: [
                          Text(
                            "price:75💲 S  100💲 M 170💲 F",
                            style: TextStyle(fontSize: 14.0),
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
                        itemSize: 20,
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
                          print("you rated pizza tuna price ");
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
                    "lib/assets/pizza_sixcheese.png",
                    height: 60,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "pizza_sixcheese",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
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
                            "price:75💲 S  100💲 M 170💲 F",
                            style: TextStyle(fontSize: 14.0),
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
                          print("you rated pizza_sixcheese price ");
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
                fontsize: 20,
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
              IconButton(
                color: Colors.pink,
                iconSize: 30.0,
                onPressed: _launchurl3,
                icon: Icon(Icons.web),
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
                            const papajohnscommentingscreen()),
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
