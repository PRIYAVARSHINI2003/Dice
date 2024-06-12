import 'package:dice/profile.dart';
import 'package:dice/search.dart';
import 'package:flutter/material.dart';
import 'homepage.dart.';

// import 'home.dart';
class tickets extends StatefulWidget {
  const tickets({Key? key}) : super(key: key);

  @override
  State<tickets> createState() => ticket();
}

class ticket extends State<tickets> {
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
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(45, 80, 55, 80),
              child: RichText(
                text: TextSpan(
                  text: "  SEE WHAT'S ON \n",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text:
                          "    Looking for something to do?See what\nevents we've got comming up,book tickets\n                 and invite your friends",
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
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (cards())),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: Size(170, 40), //box size
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80))),
                child: const Text(
                  'DISCOVER EVENTS',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (cards())),
                  );
                }),
            Spacer(),
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (search())),
                  );
                }),
            Spacer(),
            IconButton(
                icon: Icon(
                  Icons.airplane_ticket,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (tickets())),
                  );
                }),
            Spacer(),
            IconButton(
                icon: Icon(
                  Icons.people,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (profile())),
                  );
                }),
          ],
        ),
        color: Colors.black,
      ),
    );
  }
}
