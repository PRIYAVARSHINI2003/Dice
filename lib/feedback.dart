import 'package:flutter/material.dart';
//import 'package:sliding_up_panel/sliding_up_panel.dart';

class feedback extends StatelessWidget {
// build the app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Stack(
          children: [
            Container(
              //alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 20),
              child: RichText(
                text: TextSpan(
                  text: "   How's DICE going for you?",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: "\n\n\n                 ⭐    ⭐    ⭐    ⭐    ⭐\n\n",
                      style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 180, left: 100),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey,
                    fixedSize: Size(160, 40),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80))),
                child: const Text(
                  'ASK LATER',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 250, left: 20),
              //padding: EdgeInsets.fromLTRB(75, 165, 17, 200),
              child: TextButton(
                onPressed: () {},
                child: RichText(
                  text: TextSpan(
                    text:
                        'Sometimes we pop by to get feedback.Not\ninterested?You can ',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                    ),
                    children: [
                      TextSpan(
                        text: 'opt out.',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
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
