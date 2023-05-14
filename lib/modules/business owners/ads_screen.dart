import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class adsscreen extends StatefulWidget {
  const adsscreen({Key key}) : super(key: key);

  @override
  State<adsscreen> createState() => _adsscreenState();
}

class _adsscreenState extends State<adsscreen> {
  var monthlyads = "monthly";
  var simiannually = "Simiannually";
  var annually = "Annually";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 243, 196, 179),
      appBar: AppBar(
        title: Text("ads screen"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image(
                image: AssetImage("lib/assets/Logo (2).png"),
                height: 100,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              "Advertisment Plans",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Card(
              elevation: 20.0,
              child: Container(
                width: double.infinity,
                child: DropdownButton(
                  items: [
                    "monthly",
                    "1 month 150💲",
                    "2 months 300💲 ",
                    "3 months 400💲"
                  ]
                      .map((e) => DropdownMenuItem(
                            child: Text("monthly deal $e"),
                            value: e,
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      monthlyads = val;
                      print(monthlyads);
                    });
                  },
                  value: monthlyads,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              elevation: 20.0,
              child: Container(
                width: double.infinity,
                child: DropdownButton(
                  items: ["Simiannually", "6month 700💲", "7months 800💲"]
                      .map((i) => DropdownMenuItem(
                            child: Text("simiannually deal $i"),
                            value: i,
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      simiannually = val;
                      print(simiannually);
                    });
                  },
                  value: simiannually,
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Card(
              elevation: 20.0,
              child: Container(
                width: double.infinity,
                child: DropdownButton(
                  items: [
                    "Annually",
                    "1500💲",
                    "The Ads Of Your Products Will Be Repeted 10 Times Per Year",
                  ]
                      .map((i) => DropdownMenuItem(
                            child: Text("Annually deal $i"),
                            value: i,
                          ))
                      .toList(),
                  onChanged: (val) {
                    setState(() {
                      annually = val;
                      print(annually);
                    });
                  },
                  value: annually,
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
