//import 'package:dice/search.dart';
import 'package:dice/text.dart';
import 'package:flutter/material.dart';

class text extends StatefulWidget {
  @override
  State<text> createState() => Mytext();
}

class Mytext extends State<text> {
  @override
  double sliderValue = 1;
  Widget build(BuildContext context) {
    return Scaffold(
      //margin: EdgeInsets.only(top: 25, left: 25, right: 25),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
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
            ),
          ),
          Row(children: <Widget>[
            Container(
                padding: EdgeInsets.fromLTRB(0, 40, 40, 0),
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
              padding: EdgeInsets.fromLTRB(20, 40, 40, 0),
              child: ElevatedButton(
                onPressed: () {},
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
              padding: EdgeInsets.fromLTRB(30, 40, 25, 0),
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
            padding: EdgeInsets.fromLTRB(1100, 400, 0, 0),
            child: ElevatedButton(
              onPressed: () {},
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
          Container(
              padding: EdgeInsets.fromLTRB(0, 10, 25, 0),
              child: Text(
                'Hm,could you loosen your filters a bit?',
                style: TextStyle(color: Colors.white),
              )),
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
                onPressed: () {}),
            Spacer(),
            IconButton(
                icon: Icon(
                  Icons.airplane_ticket,
                  color: Colors.white,
                ),
                onPressed: () {}),
            Spacer(),
            IconButton(
                icon: Icon(
                  Icons.people,
                  color: Colors.white,
                ),
                onPressed: () {}),
          ],
        ),
        color: Colors.black,
      ),
    );
  }
}
