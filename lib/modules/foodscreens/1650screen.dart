import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/modules/commenting%20system/1650commenting.dart';
import 'package:flutter_application_1/modules/favoritescreen.dart';
import 'package:flutter_application_1/shared/smalltext.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class cofferostor extends StatefulWidget {
  const cofferostor({Key key}) : super(key: key);

  @override
  State<cofferostor> createState() => _cofferostorState();
}

class _cofferostorState extends State<cofferostor> {
  _launchurl() async {
    const url = "https://www.facebook.com/1650coffeeroaster";
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "could not launch url";
    }
  }

  _launchurl2() async {
    const url =
        "https://www.instagram.com/1650.coffeeroasteregypt/?fbclid=IwAR2gjA66V3kOe5CvfwWZ9IVtV5rP0Io0nVYX3_-9AkOHE1K9ZItnDYnH4Q8";
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
        title: Text("1650 Cofee Rostor"),
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
                    "lib/assets/frappacinno.png",
                    height: 70,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "frappacinno",
                            style: TextStyle(
                                fontSize: 15.0, fontWeight: FontWeight.bold),
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
                            "price:55 💲",
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
                          print("you rated frappacinno price ");
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
                    "lib/assets/icelatte.png",
                    height: 70,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "icelatte",
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
                            "price:40 💲",
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
                          print("you rated icelatte price ");
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
                    "lib/assets/iceniscafee.png",
                    height: 70,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "iceniscafee",
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
                            "price:45💲",
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
                          print("you rated iceniscafee price ");
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
                    "lib/assets/mixstrawbarrysoda.png",
                    height: 90,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "mixstrawbarrysoda ",
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
                          print("you rated  mixstrawbarrysoda price ");
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
                iconSize: 20.0,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const cofferostorcommentingscreenscreen()),
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
