import 'package:dice/profile.dart';
import 'package:flutter/material.dart';
import 'skip2.dart';

class skip1 extends StatefulWidget {
  const skip1({Key? key}) : super(key: key);

  @override
  State<skip1> createState() => skip();
}

class skip extends State<skip1> {
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
                        MaterialPageRoute(builder: (context) => (skip2())),
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
                  text: "  SHAPE WHAT  \n      YOU SEE \n",
                  style: TextStyle(
                      fontSize: 40,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text:
                          "         Sync your music library and we'll \n      serve up events that match your taste",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(25, 180, 25, 0), //box positioning
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(130, 40), //box size
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80))),
                child: const Text(
                  'SPOTIFY',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
