import 'package:flutter/material.dart';

// function to trigger the app build
void main() {
  runApp(const Tabb());
}

// class to build the app
class Tabb extends StatelessWidget {
  const Tabb({Key? key}) : super(key: key);

// build the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text('Who you follow'),
            backgroundColor: Colors.black,
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Following',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Suggested',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
            // TabBar
            // title: const Text('Artists'),
            // backgroundColor: Colors.black,
            //
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                ),
                onPressed: () {},
              )
            ],
          ),
          body: Container(
            child: TabBarView(
              children: [
                Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        child: RichText(
                          text: TextSpan(
                            text: "\n       No one follwed yet ",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    "\n\n\n\n                See who's on DICE",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "\n\n\n\nFollow friends and find events to go to together",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(25, 35, 25, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                backgroundColor: Colors.black26,
                                title: const Text(
                                  "Agree to let DICE access your contacts?",
                                  style: TextStyle(
                                    fontSize: 23,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                content: const Text(
                                  "DICE reads your contacts list and uses the phone "
                                  "numbers so  you can find and follow and friends "
                                  "who are also on DICE.Reacding contacts only "
                                  "occurs when you're on this screen.Phone numbers "
                                  "are encrypted and sent to our servers where we "
                                  "perform a list index matching  - we never "
                                  "store your contacts",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.normal,
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    child: const Text(
                                      'NOT NOW',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Tabb()),
                                      );
                                    },
                                  ),
                                  TextButton(
                                    child: const Text(
                                      'AGREE',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      // Navigator.push(
                                      //   context,
                                      //   MaterialPageRoute(
                                      //       builder: (context) =>  ()),
                                      // );
                                    },
                                  ),
                                ],
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              fixedSize: Size(130, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80))),
                          child: const Text(
                            'FIND CONTACTS',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(
                          padding: EdgeInsets.fromLTRB(25, 45, 25, 0),
                          child: Text(
                            "    We'll show you which of your friends are already on DICE so ypu can see who to follow. You can turn off DICE's access to ypur contacts at any time",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.only(right: 100, left: 5),
                        child: RichText(
                          text: TextSpan(
                            text: "\n\nRequests",
                            style: TextStyle(
                              fontSize: 23,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            children: [
                              TextSpan(
                                text:
                                    "\n\n\n\n                     No follow request",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              TextSpan(
                                text: "\n\n\n\nFollowers",
                                style: TextStyle(
                                  fontSize: 23,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text:
                                    "\n\n\n\n                          No one following yet",
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
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
              ], // TabBarView
            ), // Scaffold
          ),
        ),
      ), // DefaultTabController
    ); // MaterialApp
  }
}
