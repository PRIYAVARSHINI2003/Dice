import 'package:flutter/material.dart';

class terms extends StatefulWidget {
  const terms({Key? key}) : super(key: key);

  @override
  State<terms> createState() => Myterms();
}

class Myterms extends State<terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('Terms and Conditions',
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          children: ListTile.divideTiles(
                  context: context,
                  tiles: [
                    ListTile(
                        title: Text(
                          'Terms of Use',
                          style: TextStyle(color: Colors.white),
                        ),
                        //trailing: Icon(Icons.),
                        onTap: () {}),
                    ListTile(
                      title: Text(
                        'Privacy policy',
                        style: TextStyle(color: Colors.white),
                      ),
                      //trailing: Icon(Icons.keyboard_arrow_right_sharp),
                      onTap: () {},
                    ),
                    ListTile(
                      title: Text(
                        'Ticket Purchase Terms',
                        style: TextStyle(color: Colors.white),
                      ),
                      //trailing: Icon(Icons.keyboard_arrow_right_sharp),
                      onTap: () {},
                    ),
                  ],
                  color: Colors.white24)
              .toList(),
        ));
  }
}
