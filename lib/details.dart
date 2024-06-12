import 'package:flutter/material.dart';
import 'listview.dart';

class detail extends StatelessWidget {
// build the app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF000000),
      appBar: AppBar(
        title: const Text(
          '   My details',
          style: TextStyle(
              color: Colors.white, fontSize: 23, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black,
        actions: <Widget>[
          // IconButton(
          //   icon: Icon(
          //    // Icons.arrow_back,
          //     color: Colors.white,
          //   ),
          //   onPressed: () {},
          // )
        ],
      ),
      body: Container(
        child: RichText(
          text: TextSpan(
            text: 'Name:          ',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
            children: [
              TextSpan(
                text: 'Priyavarshini',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              TextSpan(
                text: '\n\nPhone:          ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: '7305475758',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
              TextSpan(
                text: '\n\nEmail:           ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: 'vvarshini833@gmail.com',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 18,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        //type:BottomNavigationBarType.shifting,
        color: Colors.black,
        child: Container(
          padding: EdgeInsets.fromLTRB(25, 90, 25, 0),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => (listview())),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              fixedSize: Size(1800, 50),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80)),
            ),
            child: const Text(
              'UPDATE',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    ); // DefaultTabController
    // MaterialApp
  }
}
