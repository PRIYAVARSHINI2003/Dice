import 'package:dice/address.dart';
import 'package:dice/credit.dart';
import 'package:dice/delete.dart';
import 'package:dice/details.dart';
import 'package:dice/notification.dart';
import 'package:dice/privacy.dart';
import 'package:dice/signin.dart';
import 'package:dice/support.dart';
import 'package:dice/terms.dart';
import 'package:flutter/material.dart';

import 'feedback.dart';

class listview extends StatefulWidget {
  const listview({Key? key}) : super(key: key);

  @override
  State<listview> createState() => MyListView();
}

class MyListView extends State<listview> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Settings', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: ListTile.divideTiles(
                  context: context,
                  tiles: [
                    ListTile(
                        title: Text(
                          'Music Scanning',
                          style: TextStyle(color: Colors.white),
                        ),
                        //trailing: Icon(Icons.),
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              backgroundColor: Colors.white,
                              title: const Text(
                                "Keep track of when your favourite artists put on a show",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              // content: const Text("Are you sure?",style: TextStyle(fontSize: 18,color: Colors.grey,fontWeight: FontWeight.normal,
                              // ),
                              // ),
                              actions: <Widget>[
                                Container(
                                  padding: EdgeInsets.only(left: 10, right: 90),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.black,
                                        // minimumSize: const Size.fromHeight(10),
                                        fixedSize: Size(130, 40),
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(20))),
                                    child: const Text(
                                      'SPOTIFY',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        }),
                    ListTile(
                      title: Text(
                        'My Details',
                        style: TextStyle(color: Colors.white),
                      ),
                      //trailing: Icon(Icons.keyboard_arrow_right_sharp),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => detail(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Privacy',
                        style: TextStyle(color: Colors.white),
                      ),
                      //trailing: Icon(Icons.keyboard_arrow_right_sharp),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => privacy()),
                        );
                      },
                    ),
                    ListTile(
                      title:
                          Text('Credit', style: TextStyle(color: Colors.white)),
                      //trailing: Icon(Icons.keyboard_arrow_right_sharp),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => credit()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Notifications',
                        style: TextStyle(color: Colors.white),
                      ),
                      //trailing: Icon(Icons.keyboard_arrow_right_sharp),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => notification()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        '✉️  Address',
                        style: TextStyle(color: Colors.white),
                      ),
                      //trailing: Icon(Icons.keyboard_arrow_right_sharp),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => add()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Share the app',
                        style: TextStyle(color: Colors.white),
                      ),
                      //trailing: Icon(Icons.keyboard_arrow_right_sharp),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'Rate the app',
                        style: TextStyle(color: Colors.white),
                      ),
                      //trailing: Icon(Icons.keyboard_arrow_right_sharp),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'Give us your feedback',
                        style: TextStyle(color: Colors.white),
                      ),
                      // trailing: Icon(Icons.keyboard_arrow_right_sharp),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => feedback()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Terms and conditions',
                        style: TextStyle(color: Colors.white),
                      ),
                      // trailing: Icon(Icons.keyboard_arrow_right_sharp),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => terms()),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        '?   Support',
                        style: TextStyle(color: Colors.white),
                      ),
                      // trailing: Icon(Icons.keyboard_arrow_right_sharp),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => support(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Log out',
                        style: TextStyle(color: Colors.white),
                      ),
                      // trailing: Icon(Icons.keyboard_arrow_right_sharp),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            backgroundColor: Colors.black26,
                            title: const Text(
                              "Log out",
                              style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            content: const Text(
                              "Are you sure?",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.normal,
                              ),
                            ),
                            actions: <Widget>[
                              TextButton(
                                child: const Text(
                                  'CANCEL',
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => listview()),
                                  );
                                },
                              ),
                              TextButton(
                                child: const Text(
                                  'LOG OUT',
                                  style: TextStyle(color: Colors.white),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => delete()),
                                  );
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: Text(
                        'Delete account',
                        style: TextStyle(color: Colors.white),
                      ),
                      //trailing: Icon(Icons.keyboard_arrow_right_sharp),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => delete()),
                        );
                      },
                    ),
                  ],
                  color: Colors.white24)
              .toList(),
        ));
  }
}
