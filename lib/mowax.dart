//import 'dart:html';
import 'package:flutter/material.dart';

class mowax extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Card(
              margin: EdgeInsets.fromLTRB(10, 10, 600, 20),
              elevation: 4.0,
              child: Image.asset(
                'assets/images/img_8.png',
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 0, right: 820),
              child: RichText(
                text: TextSpan(
                  text:
                      'For  Your  listening \nPLEASURES  feat. James \nLavelle (UNKL...',
                  style: TextStyle(
                    fontSize: 35,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: "\nHERE  at  Outernet",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    TextSpan(
                      text: "\nWed  12  Dec,  8:00pm  UTC+1\n",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.yellow,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    WidgetSpan(
                      child: Icon(
                        Icons.location_on,
                        color: Colors.white70,
                      ),
                    ),
                    TextSpan(
                      text: "LONDON",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white70,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
