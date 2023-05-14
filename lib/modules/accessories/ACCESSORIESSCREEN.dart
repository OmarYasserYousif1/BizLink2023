import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/modules/custumers/queenaccessoriesscreen.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ACCESSORIESSCREEN extends StatefulWidget {
  const ACCESSORIESSCREEN({Key key}) : super(key: key);

  @override
  State<ACCESSORIESSCREEN> createState() => _ACCESSORIESSCREENState();
}

class _ACCESSORIESSCREENState extends State<ACCESSORIESSCREEN> {
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
        title: Text("AccessoriesScreen"),
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
                        builder: (context) => const queenaccessoriesscreen()),
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
                              Text("Category:accessories"),
                              IconButton(
                                icon: Icon(Icons.favorite),
                                color: Colors.black,
                                onPressed: _incrementCounter,
                                iconSize: 40,
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
          ],
        ),
      ),
    );
  }
}
