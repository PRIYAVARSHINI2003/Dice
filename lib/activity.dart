import 'package:flutter/material.dart';

// function to trigger the app build
void main() {
  runApp(const act());
}

// class to build the app
class act extends StatelessWidget {
  const act({Key? key}) : super(key: key);

// build the app
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('    Activity'),
        backgroundColor: Colors.black,
        actions: <Widget>[
          // IconButton(
          //   icon: Icon(
          //     Icons.arrow_back,
          //     color: Colors.white,
          //   ),
          //   onPressed: () {
          //   },
          // )
        ],
      ), // DefaultTabController
    ); // MaterialApp
  }
}
