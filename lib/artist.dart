import 'package:flutter/material.dart';

// function to trigger the app build
void main() {
  runApp(const Art());
}

// class to build the app
class Art extends StatelessWidget {
  const Art({Key? key}) : super(key: key);

// build the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text('     Artists'),
            backgroundColor: Colors.black,
            bottom: const TabBar(
              tabs: [
                Tab(
                  child: Text(
                    'Following',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Tab(
                  child: Text(
                    'Suggested',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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
                Text(
                  '\n\n  No one followed yet',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                // Text('Music Library',style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.normal,
                // ),
                // ),
                const SizedBox(
                  height: 25,
                  width: 25,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      minimumSize: const Size.fromHeight(5),
                      //fixedSize: Size(5, 5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text(
                    'Connect Library',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 08,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            // TabBarView
          ), // Scaffold
        ),
      ), // DefaultTabController
    ); // MaterialApp
  }
}
