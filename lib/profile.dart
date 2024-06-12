//import 'package:dice/usemylocation.dart';
//import 'package:dice/cards.dart';
import 'package:dice/activity.dart';
import 'package:dice/friends.dart';
import 'package:dice/homepage.dart';
import 'package:dice/listview.dart';
import 'package:dice/privacy.dart';
import 'package:dice/search.dart';
import 'package:dice/ticket.dart';
import 'package:dice/venue.dart';
import 'package:flutter/material.dart';

import 'artist.dart';
//import 'skip2.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => profile1();
}

class profile1 extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.message,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (act())),
              );
            },
          ),
          IconButton(
            icon: Icon(
              Icons.share,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (listview())),
              );
            },
          )
        ],
      ),
      body: Scrollbar(
        child: Stack(
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),

                shape: BoxShape.circle,
                // You can use like this way or like the below line
                //borderRadius: new BorderRadius.circular(30.0),
                color: Colors.black,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('PV',
                      style: TextStyle(
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 100, 17, 300),
              child: const Text(
                'Priyavarshini',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              //color: Colors.grey,
              //width: double.infinity,
              padding: EdgeInsets.fromLTRB(10, 145, 17, 300),
              child: Column(
                children: [
                  // Rounded Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => (Tabb())),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white12,
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 18.0),
                      shape: RoundedRectangleBorder(
                        //color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: Text(
                      "+\n Friends",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //width: double.infinity,
              padding: EdgeInsets.fromLTRB(140, 145, 27, 300),
              child: Column(
                children: [
                  // Rounded Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => (Art())),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white10,
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 20.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      //color: Colors.purple
                    ),
                    child: Text(
                      "+\n Artists",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              //width: double.infinity,
              padding: EdgeInsets.fromLTRB(260, 145, 17, 300),
              child: Column(
                children: [
                  // Rounded Button
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => (venue())),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white10,
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.0, vertical: 20.0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      //color: Colors.purple
                    ),
                    child: Text(
                      "+\n Venues",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 230, 17, 100),
              child: Text(
                '\nMake Plans',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 285, 17, 80),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.white, width: 1),
                  shape: BoxShape.circle,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '0/3',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(75, 280, 17, 80),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (Tabb())),
                  );
                },
                child: RichText(
                  text: TextSpan(
                    text: 'Follow 3 friends\n',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                        text:
                            'See what they\'re interested in and we\'ll suggest shows you can go to together.',
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 350, 17, 100),
              child: Text(
                '\n\n\nSaved',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(110, 480, 17, 80),
              child: Text(
                'No Upcomming events',
                style: TextStyle(color: Colors.white70, fontSize: 14),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 590, 25, 0),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // padding: EdgeInsets.fromLTRB(25, 150, 25, 0),
                children: <Widget>[
                  TextButton(
                    child: const Text(
                      'You\'re not currently sharing any data with your \nfollowers.                                 '
                      '                 🖤     🎵     🎟️',
                      style: TextStyle(height: 2, color: Colors.grey),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => (privacy())),
                      );
                    },
                  ),
                  const SizedBox(width: 11),
                ],
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
