import 'package:flutter/material.dart';

import 'splash.dart';

class skip2 extends StatefulWidget {
  const skip2({Key? key}) : super(key: key);

  @override
  State<skip2> createState() => skip();
}

class skip extends State<skip2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/img_6.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(300, 100, 17, 300),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                //padding: EdgeInsets.fromLTRB(25,150,25,0),
                children: <Widget>[
                  TextButton(
                    child: const Text(' SKIP',
                        style: TextStyle(color: Colors.white, height: 1)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => (spl())),
                      );
                    },
                  ),
                  const SizedBox(width: 11),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(50, 95, 55, 100),
              child: RichText(
                text: TextSpan(
                  text: "     USEFUL \nUPDATES,NO \n      SPAM\n",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text:
                          "Set time remainder,exclusive shows \n                  and special offers",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white60,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(660, 500, 200, 30),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    fixedSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80))),
                child: const Text(
                  'TURN ON NOTIFICATIONS',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
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
