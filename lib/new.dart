import 'package:dice/profile.dart';
import 'package:dice/search.dart';
import 'package:dice/ticket.dart';
import 'package:flutter/material.dart';
import 'homepage.dart';

// import 'home.dart';
class NewSh extends StatefulWidget {
  const NewSh({Key? key}) : super(key: key);

  @override
  State<NewSh> createState() => show();
}

class show extends State<NewSh> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/img_6.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.fromLTRB(65, 80, 55, 100),
              child: RichText(
                text: TextSpan(
                  text: "  NEW SHOWS COMING SOON",
                  style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text:
                          "\nCheck back in a bit and we'll have   some new recommendations for you 🌱",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
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
