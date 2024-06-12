import 'package:dice/usemylocation.dart';
import 'package:dice/new.dart';
import 'package:dice/profile.dart';
import 'package:dice/search.dart';
import 'package:dice/ticket.dart';
import 'package:dice/upcomming.dart';
import 'package:dice/who.dart';
import 'package:flutter/material.dart';
import 'mowax.dart';

class cards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // final title = 'Horizontal List';
      //  backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  Colors.greenAccent,
                  Colors.black87,
                  Colors.indigo,
                  Colors.black87,
                  Colors.indigo,
                  Colors.black87,
                ],
              ),
            ),
            child: Column(
              children: <Widget>[
                // Container(
                //  child: Row(
                //    children: <Widget>[
                Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/img_6.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Row(
                    children: [
                      Container(
                          child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => (cards())),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black26,
                            side: const BorderSide(
                              width: 2.0,
                              color: Colors.white,
                            ),
                            fixedSize: const Size(70, 25),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80))),
                        child: const Text(
                          'Home',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            //fontWeight: FontWeight.bold
                          ),
                        ),
                      )),
                      // Spacer(),
                      Container(
                        padding: const EdgeInsets.only(left: 15),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (const NewSh())),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black26,
                              side: const BorderSide(
                                  width: 2, color: Colors.white),
                              fixedSize: const Size(60, 25),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60))),
                          child: const Text(
                            'New',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              //fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(left: 25),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (const upcoming())),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black26,
                              side: const BorderSide(
                                  width: 2, color: Colors.white),
                              fixedSize: const Size(100, 25),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60))),
                          child: const Text(
                            'Upcoming',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              //fontWeight: FontWeight.bold
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: IconButton(
                          padding: const EdgeInsets.only(left: 90),
                          icon: const Icon(
                            Icons.location_on,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Text('\n'),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 5),
                      // padding: EdgeInsets.only(left: 2,right: 1020),
                      child: RichText(
                        text: TextSpan(
                          text: "Your artists",
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: "\nArtists you follow and listen to.",
                              style: TextStyle(
                                fontSize: 17,
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
                Container(
                  child: Text('\n'),
                ),
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 80),
                      // padding: EdgeInsets.only(left: 100,right:550),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            // minimumSize: const Size.fromHeight(10),
                            fixedSize: Size(200, 36),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Text(
                          'SCAN YOUR MUSIC LIBRARY',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 80),
                      // padding: EdgeInsets.only(left: 90,right:550),
                      child: Text(
                        "  We're looking for new events for you",
                        style: TextStyle(fontSize: 12, color: Colors.white54),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Text('\n\n\n\n\n'),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 5),
                      // padding: EdgeInsets.only(left: 5,right: 980),
                      child: RichText(
                        text: TextSpan(
                          text: "Trending with your friends",
                          style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                          children: [
                            TextSpan(
                              text: "\nEvents your friends are interested in.",
                              style: TextStyle(
                                fontSize: 17,
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
                Container(
                  child: Text('\n'),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 80),
                      // padding: EdgeInsets.only(left: 100,right:550),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => (Tabb())),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            // minimumSize: const Size.fromHeight(10),
                            fixedSize: Size(200, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20))),
                        child: const Text(
                          'FIND YOUR FRIENDS',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.only(left: 90),
                      // padding: EdgeInsets.only(left: 90,right:550),
                      child: Text(
                        "If your friends are interested in an\n        event,it'll show here",
                        style: TextStyle(fontSize: 12, color: Colors.white54),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (cards())),
                  );
                }),
            const Spacer(),
            IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (search())),
                  );
                }),
            const Spacer(),
            IconButton(
                icon: const Icon(
                  Icons.airplane_ticket,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (const tickets())),
                  );
                }),
            const Spacer(),
            IconButton(
                icon: const Icon(
                  Icons.people,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (const profile())),
                  );
                }),
          ],
        ),
        color: Colors.black,
      ),
    );
  }
}
