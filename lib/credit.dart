import 'package:flutter/material.dart';
// function to trigger the app build

// class to build the app
class credit extends StatelessWidget {
// build the app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text('    Credit'),
          backgroundColor: Colors.black,
          actions: <Widget>[],
        ),
        body: Container(
          margin: EdgeInsets.only(left: 90),
          child: RichText(
            text: TextSpan(
              text: '\n\n Remaining credit',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              children: [
                TextSpan(
                  text: '\n\n        ₹',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: '0',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: '.00',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: '\n\n\n\n  Redeemed vouchers',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
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
              padding: EdgeInsets.fromLTRB(25, 70, 25, 0),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(1800, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80)),
                ),
                child: const Text(
                  'REDEEM VOUCHER',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    // fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )));
    // DefaultTabController
    // MaterialApp
  }
}
