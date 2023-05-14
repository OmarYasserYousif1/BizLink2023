import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/modules/technologyscreens/CraftTableScreen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class TechnologyScreen extends StatefulWidget {
  const TechnologyScreen({Key key}) : super(key: key);

  @override
  State<TechnologyScreen> createState() => _TechnologyScreenState();
}

class _TechnologyScreenState extends State<TechnologyScreen> {
  int _counter = 0;
  int _rating = 0;
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 196, 179),
      appBar: AppBar(
        title: Text("Technology BusinessScreen"),
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
                        builder: (context) => const CraftTableScreen()),
                  );
                },
                child: Card(
                  color: Color.fromARGB(248, 249, 142, 103),
                  elevation: 10.0,
                  child: Row(
                    children: [
                      Image.asset(
                        "lib/assets/Craft_table.png",
                        height: 50,
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                "Craft_table",
                                style: TextStyle(fontSize: 25.0),
                              ),
                              IconButton(
                                icon: Icon(Icons.favorite),
                                color: Colors.black,
                                onPressed: _incrementCounter,
                                iconSize: 40,
                              ),
                            ],
                          ),
                          Text("Category:3D Printing"),
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
          ],
        ),
      ),
    );
  }
}
