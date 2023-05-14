import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/LoginForm.dart';
import 'package:flutter_application_1/modules/aboutusscreen.dart';
import 'package:flutter_application_1/modules/accessories/ACCESSORIESSCREEN.dart';
import 'package:flutter_application_1/modules/business%20owners/addproduct.dart';
import 'package:flutter_application_1/modules/business%20owners/businessownerscreen.dart';
import 'package:flutter_application_1/modules/clothesscreens/clothesScreen.dart';
import 'package:flutter_application_1/modules/custumers/cityCrepescreen.dart';
import 'package:flutter_application_1/modules/custumers/queenaccessoriesscreen.dart';
import 'package:flutter_application_1/modules/custumers/townteamscreen.dart';
import 'package:flutter_application_1/modules/favoritescreen.dart';

import 'package:flutter_application_1/modules/foodscreens/foodscreen.dart';
import 'package:flutter_application_1/modules/homedecoresscreen/Home%20Decore.dart';

import 'package:flutter_application_1/modules/technologyscreens/TechnologyScreen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../business owners/ProductDetailsscreen.dart';

class CustumerHomePage extends StatefulWidget {
  @override
  State<CustumerHomePage> createState() => _CustumerHomePageState();
}

class _CustumerHomePageState extends State<CustumerHomePage> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 196, 179),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(248, 249, 142, 103),
        child: Column(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Others",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text(
                  "logout",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginForm(),
                        ),
                      );
                    },
                    icon: Icon(Icons.exit_to_app),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text(
                  "About Us",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => aboutusscreen(),
                        ),
                      );
                    },
                    icon: Icon(Icons.info),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Text(
                  "regester your bussiness",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => businessownerscreen(),
                        ),
                      );
                    },
                    icon: Icon(Icons.business),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => favoritescreen(
                    _counter,
                    _resetCounter,
                    _rating,
                    _rating1,
                    _rating2,
                  ),
                ),
              );
            },
            icon: Icon(
              Icons.analytics,
              color: Colors.black,
            ),
          ),
        ],
        title: Text('Customer HomePage'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 152, 112, 97),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  color: Color.fromARGB(255, 152, 95, 75),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const foodscreen()),
                          );
                        },
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("lib/assets/foodcircleavatar.png"),
                          radius: 25.0,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const clothesScreen()),
                          );
                        },
                        child: CircleAvatar(
                          backgroundImage:
                              AssetImage("lib/assets/Clothescircleavatar.png"),
                          radius: 25.0,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const ACCESSORIESSCREEN()),
                          );
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                              "lib/assets/AccessoriesCircleavatar.png"),
                          radius: 25.0,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const TechnologyScreen()),
                          );
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                              "lib/assets/Computerscircle avatar.png"),
                          radius: 25.0,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomeDecore()),
                          );
                        },
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                              "lib/assets/Home Decore circle avatar.png"),
                          radius: 25.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          '''
Easily Connecting Start_Ups 
& Customers with BizLink:''',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 5.0),
                        Text(
                          '''
BizLink makes it easy for start_ups
to connect with customers & promote
thier products & services 
its user_friendly interface allows
customers to quickly easily 
find the write start up for their needs
and its powerful search and personalization 
feature make it easy to find the perfect match
bazlink is the perfect tool for start ups
to easily connect 7 buld relationships
                          ''',
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                    Image.asset(
                      "lib/assets/Business deal-pana.png",
                      height: 75,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const townteamscreen()),
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(248, 249, 142, 103),
                      elevation: 10.0,
                      child: Row(
                        children: [
                          Image.asset(
                            "lib/assets/TownTeam.png",
                            height: 70,
                          ),
                          Column(
                            children: [
                              Text(
                                "Town team",
                                style: TextStyle(fontSize: 25.0),
                              ),
                              Row(
                                children: [
                                  Text("Category:Clothing"),
                                  IconButton(
                                    icon: Icon(Icons.favorite),
                                    color: Colors.black,
                                    onPressed: _incrementCounter,
                                    iconSize: 20,
                                  ),
                                ],
                              ),
                              Row(children: [
                                IconButton(
                                  icon: Icon(_rating >= 1
                                      ? Icons.star
                                      : Icons.star_border),
                                  color: Colors.black,
                                  onPressed: () => _setRating(1),
                                  iconSize: 25,
                                ),
                                IconButton(
                                  icon: Icon(_rating >= 2
                                      ? Icons.star
                                      : Icons.star_border),
                                  color: Colors.black,
                                  onPressed: () => _setRating(2),
                                  iconSize: 25,
                                ),
                                IconButton(
                                  icon: Icon(_rating >= 3
                                      ? Icons.star
                                      : Icons.star_border),
                                  color: Colors.black,
                                  onPressed: () => _setRating(3),
                                  iconSize: 25,
                                ),
                                IconButton(
                                  icon: Icon(_rating >= 4
                                      ? Icons.star
                                      : Icons.star_border),
                                  color: Colors.black,
                                  onPressed: () => _setRating(4),
                                  iconSize: 25,
                                ),
                                IconButton(
                                  icon: Icon(_rating >= 5
                                      ? Icons.star
                                      : Icons.star_border),
                                  color: Colors.black,
                                  onPressed: () => _setRating(5),
                                  iconSize: 25,
                                ),
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
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
                                  Text(
                                    "Category:Fast Food",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
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
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const queenaccessoriesscreen()),
                      );
                    },
                    child: Card(
                      color: Color.fromARGB(248, 249, 142, 103),
                      elevation: 10.0,
                      child: Row(
                        children: [
                          Image.asset(
                            "lib/assets/queen accessories.png",
                            height: 70,
                          ),
                          Column(
                            children: [
                              Text(
                                "queen accessories",
                                style: TextStyle(fontSize: 25.0),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Category:accessories",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
