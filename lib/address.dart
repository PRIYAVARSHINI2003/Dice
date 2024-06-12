import 'package:dice/listview.dart';
import 'package:flutter/material.dart';

//import 'profile.dart';
class add extends StatefulWidget {
  const add({Key? key}) : super(key: key);

  @override
  State<add> createState() => address();
}

class address extends State<add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Stack(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => (listview())),
                );
              },
            ),
            Container(
              margin: EdgeInsets.only(left: 10, top: 55),
              child: RichText(
                text: TextSpan(
                  text: "Address",
                  style: TextStyle(
                      fontSize: 23,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: "\nAdd an address so we can post your order to you",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // child: Text("Address 1", style: TextStyle(fontSize: 16)),
              margin: EdgeInsets.only(left: 10, top: 105),
              child: TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Address line 1',
                    hintText: 'Number / Street name'),
              ),
            ),
            Container(
              // child: Text("Address 1", style: TextStyle(fontSize: 16)),
              margin: EdgeInsets.only(left: 10, top: 145),
              child: TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Address line 2',
                    hintText: 'Apartment / Floor'),
              ),
            ),
            Container(
              // child: Text("Address 1", style: TextStyle(fontSize: 16)),
              margin: EdgeInsets.only(left: 10, top: 185),
              child: TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Town',
                    hintText: 'Town'),
              ),
            ),
            Container(
              // child: Text("Address 1", style: TextStyle(fontSize: 16)),
              margin: EdgeInsets.only(left: 10, top: 225),
              child: TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Country / State',
                    hintText: 'Country / State'),
              ),
            ),
            Container(
              // child: Text("Address 1", style: TextStyle(fontSize: 16)),
              margin: EdgeInsets.only(left: 10, top: 265),
              child: TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'PostCode / Zipcode',
                    hintText: 'PostCode / Zipcode'),
              ),
            ),
            Container(
              // child: Text("Address 1", style: TextStyle(fontSize: 16)),
              margin: EdgeInsets.only(left: 10, top: 305),
              child: TextField(
                decoration: InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Country',
                    hintText: 'India'),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 380, 25, 0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (listview())),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    fixedSize: Size(150, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(80))),
                child: const Text(
                  'ADD ADDRESS',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
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
