import 'package:flutter/material.dart';

// function to trigger the app build
void main() {
  runApp(const venue());
}

// class to build the app
class venue extends StatelessWidget {
  const venue({Key? key}) : super(key: key);

// build the app
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: const Text('Venues'),
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
                //  Text('Popular venues near you',style: TextStyle(color:Colors.white,fontSize: 20,fontWeight: FontWeight.normal,
                //  ),
                // ),
                RichText(
                  text: TextSpan(
                    text: "\n\n Popular venues near you",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.normal),
                    children: [
                      TextSpan(
                        text:
                            "\n\n\n\n\n\n\n\n\n\n                                     No venues found",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ],
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
