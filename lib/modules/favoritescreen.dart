import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class favoritescreen extends StatelessWidget {
  final int count;
  final int rating;
  final VoidCallback resetCallback;

  favoritescreen(
      this.count, this.resetCallback, this.rating, int rating1, int rating2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Count Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Card(
              elevation: 20,
              child: Container(
                color: Color.fromARGB(255, 238, 162, 134),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.favorite),
                    SizedBox(
                      width: 60,
                    ),
                    Text(
                      '$count',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                  ],
                ),
              ),
            ),
            Card(
              elevation: 20,
              child: Container(
                color: Color.fromARGB(255, 238, 162, 134),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "your rate",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Icon(rating >= 1 ? Icons.star : Icons.star_border,
                        color: Colors.black, size: 30),
                    Icon(rating >= 2 ? Icons.star : Icons.star_border,
                        color: Colors.black, size: 30),
                    Icon(rating >= 3 ? Icons.star : Icons.star_border,
                        color: Colors.black, size: 30),
                    Icon(rating >= 4 ? Icons.star : Icons.star_border,
                        color: Colors.black, size: 30),
                    Icon(rating >= 5 ? Icons.star : Icons.star_border,
                        color: Colors.black, size: 30),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: resetCallback,
              child: Text('Reset Count your favorated'),
            ),
          ],
        ),
      ),
    );
  }
}
