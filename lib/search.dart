import 'package:dice/freeprice.dart';
import 'package:dice/homepage.dart';
//import 'package:dice/map.dart';
import 'package:dice/profile.dart';
import 'package:dice/ticket.dart';
import 'package:flutter/material.dart';

//import 'price.dart';

class search extends StatefulWidget {
  @override
  State<search> createState() => Mysearch();
}

class Mysearch extends State<search> {
  @override
  double sliderValue = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      //margin: EdgeInsets.only(top: 25, left: 25, right: 25),
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
                padding: EdgeInsets.fromLTRB(5, 45, 5, 0),
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Colors.white24,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      hintText: 'Search for an event,artist or venue',
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                      prefixIcon: Container(
                        padding: EdgeInsets.all(15),
                        child: Icon(
                          Icons.search,
                          color: Colors.grey,
                        ),
                        width: 18,
                      )),
                )),
          ),
          Row(children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(0, 10, 20, 0),
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
              padding: EdgeInsets.fromLTRB(5, 10, 20, 0),
              child: ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      backgroundColor: Colors.white,
                      actions: <Widget>[
                        Slider(
                          value: sliderValue,
                          onChanged: (double value) {
                            setState(() {
                              sliderValue = value;
                            });
                          },
                          activeColor: Colors.black,
                          inactiveColor: Colors.white24,
                          thumbColor: Colors.black,
                        ),
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
                                  borderRadius: BorderRadius.circular(80))),
                          child: const Text(
                            'FREE->ANY AMOUNT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              //fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white24,
                    fixedSize: Size(60, 25),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(60))),
                child: const Text(
                  'PRICE',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    //fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 10, 55, 0),
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
            padding: EdgeInsets.fromLTRB(250, 550, 0, 0),
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
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            IconButton(
                icon: Icon(
                  Icons.home,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => (cards())),
                  );
                }),
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
