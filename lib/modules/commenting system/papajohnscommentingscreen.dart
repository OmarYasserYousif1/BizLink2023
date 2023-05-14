import 'package:flutter/material.dart';

class papajohnscommentingscreen extends StatefulWidget {
  const papajohnscommentingscreen({Key key}) : super(key: key);

  @override
  State<papajohnscommentingscreen> createState() =>
      _papajohnscommentingscreenState();
}

class _papajohnscommentingscreenState extends State<papajohnscommentingscreen> {
  final _textController = TextEditingController();
  String userPost = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 196, 179),
      appBar: AppBar(
        title: Text("Comment below 👇"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                "lib/assets/Papa_John's_Logo.png",
                height: 100.0,
                width: double.infinity,
              ),
            ),
            // display text
            Expanded(
                child: Container(
              child: Center(
                  child: Text(
                userPost,
                style: TextStyle(fontSize: 35),
              )),
            )),
            // text input

            Card(
              child: TextField(
                controller: _textController,
                decoration: const InputDecoration(
                  hintText: "what'syour comment ?!!",
                  border: const OutlineInputBorder(),
                  suffixIcon: Icon(Icons.comment),
                ),
              ),
            ),
            //post button
            MaterialButton(
              onPressed: () {
                setState(() {
                  userPost = _textController.text;
                });
              },
              color: Colors.brown,
              child: const Text(
                'post',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
