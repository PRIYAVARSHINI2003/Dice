//import 'package:dice/search.dart';
//import 'package:dice/text.dart';
import 'package:dice/profile.dart';
import 'package:dice/search.dart';
import 'package:dice/ticket.dart';
import 'package:flutter/material.dart';

//import 'map.dart';

class price extends StatefulWidget {
  @override
  State<price> createState() => Myprice();
}

class Myprice extends State<price> {
  @override
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  double sliderValue = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      //margin: EdgeInsets.only(top: 25, left: 25, right: 25),
      backgroundColor: Colors.black,
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      body: new Stack(
        children: <Widget>[
          new Container(
            child: new Column(
              children: [
                Flexible(
                  flex: 1,
                  child: Container(
                    padding: EdgeInsets.fromLTRB(5, 45, 0, 0),
                    child: TextField(
                      cursorColor: Colors.grey,
                      decoration: InputDecoration(
                          fillColor: Colors.white24,
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          hintText: 'Search for an event,artist or venue',
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 18),
                          prefixIcon: Container(
                            padding: EdgeInsets.all(15),
                            child: Icon(
                              Icons.search,
                              color: Colors.grey,
                            ),
                            //height: 40,
                            width: 8,
                          )),
                    ),
                  ),
                ),
                Row(children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(left: 5, right: 8),
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white24,
                            fixedSize: Size(70, 25),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80))),
                        child: const Text(
                          'DATE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            //fontWeight: FontWeight.bold
                          ),
                        ),
                      )),
                  // Spacer(),
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 10, 0),
                    child: ElevatedButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (ctx) => AlertDialog(
                            backgroundColor: Colors.white,
                            actions: <Widget>[
                              Slider(
                                  min: 0,
                                  max: 100,
                                  divisions: 100,
                                  value: _counter.toDouble(),
                                  onChanged: (value) {
                                    setState(() {
                                      _counter = value.toInt();
                                      debugPrint("Slider: $value");
                                    });
                                  }),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => (price())),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                    // padding: EdgeInsets.only(left: 200, right: 200),
                                    backgroundColor: Colors.black,
                                    fixedSize: Size(150, 25),
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(80))),
                                child: Container(
                                  padding: EdgeInsets.only(
                                      left: 3, right: 0, top: 2),
                                  child: const Text(
                                    'FREE->ANY AMOUNT',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 10,
                                      //fontWeight: FontWeight.bold
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white24,
                          fixedSize: Size(140, 25),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                      child: const Text(
                        'FREE->ANY AMOUNT',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          //fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 0, top: 4),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white24,
                          fixedSize: Size(100, 25),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(60))),
                      child: const Text(
                        'CHENNAI',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,

                          //fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ),
                ]),
                Container(
                    padding: EdgeInsets.fromLTRB(5, 30, 100, 200),
                    child: Text(
                      'Hm,could you loosen your filters a bit?',
                      style: TextStyle(color: Colors.white),
                    )),
                Container(
                  padding: EdgeInsets.fromLTRB(250, 300, 0, 0),
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => (Mymapp())),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white24,
                        fixedSize: Size(100, 30),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80))),
                    child: const Text(
                      'VIEW MAP',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {}),
            Spacer(),
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (search())),
                  );
                }),
            Spacer(),
            IconButton(
                icon: Icon(
                  Icons.airplane_ticket,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (tickets())),
                  );
                }),
            Spacer(),
            IconButton(
                icon: Icon(
                  Icons.people,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (profile())),
                  );
                }),
          ],
        ),
        color: Colors.black,
      ),
    );
  }
}
