import 'package:flutter/material.dart';

class support extends StatefulWidget {
  const support({Key? key}) : super(key: key);

  @override
  State<support> createState() => Mysupport();
}

class Mysupport extends State<support> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(10, 75, 55, 100),
              child: RichText(
                text: TextSpan(
                  text: "NEED HELP?",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "\nLet's  get  you  sorted",
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
              padding: EdgeInsets.fromLTRB(10, 150, 55, 100),
              child: ListView(
                children: ListTile.divideTiles(
                        context: context,
                        tiles: [
                          ListTile(
                              title: Text(
                                'How do I send tickets to a friend',
                                style: TextStyle(color: Colors.black),
                              ),
                              trailing: Icon(Icons.keyboard_arrow_right_sharp),
                              //trailing: Icon(Icons.),
                              onTap: () {}),
                          ListTile(
                              title: Text(
                                'What happens if an event is cancelled\nor resheduled ?',
                                style: TextStyle(color: Colors.black),
                              ),
                              trailing: Icon(Icons.keyboard_arrow_right_sharp),
                              //trailing: Icon(Icons.),
                              onTap: () {}),
                          ListTile(
                              title: Text(
                                'Help Centre',
                                style: TextStyle(color: Colors.black),
                              ),
                              trailing: Icon(Icons.keyboard_arrow_right_sharp),
                              //trailing: Icon(Icons.),
                              onTap: () {}),
                        ],
                        color: Colors.grey)
                    .toList(),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 295, 55, 100),
              child: Text(
                'Something else',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 320, 55, 100),
              child: ListView(
                children: ListTile.divideTiles(
                        context: context,
                        tiles: [
                          ListTile(
                              title: Text(
                                'How do I get a refund',
                                style: TextStyle(color: Colors.black),
                              ),
                              trailing: Icon(Icons.keyboard_arrow_right_sharp),
                              //trailing: Icon(Icons.),
                              onTap: () {}),
                          ListTile(
                              title: Text(
                                'Get in touch ',
                                style: TextStyle(color: Colors.black),
                              ),
                              trailing: Icon(Icons.keyboard_arrow_right_sharp),
                              //trailing: Icon(Icons.),
                              onTap: () {}),
                        ],
                        color: Colors.grey)
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
