import 'package:flutter/material.dart';

class notification extends StatefulWidget {
  const notification({Key? key}) : super(key: key);

  @override
  State<notification> createState() => Mynoti();
}

class Mynoti extends State<notification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Notifications', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
          child: new Column(
        // child: Stack(
        children: <Widget>[
          Row(children: [
            Container(
              child: RichText(
                text: TextSpan(
                  text: " Event info",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text:
                          "\n Lineup, door times,location.We'll Keep you in the loop \n when things change.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
          const Divider(
            // height: 100,
            thickness: 1,
            indent: 8,
            endIndent: 0,
            color: Colors.white70,
          ),
          Container(
            margin: EdgeInsets.only(right: 0, left: 0),
            child: Card(
              color: Theme.of(context).dividerColor,
              // margin: EdgeInsets.only(top:47),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Push messages",
                        style: TextStyle(color: Colors.white)),
                    Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Theme.of(context).scaffoldBackgroundColor),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            // height: 180,
            thickness: 1,
            indent: 8,
            endIndent: 0,
            color: Colors.white70,
          ),
          Row(children: [
            Container(
              margin: EdgeInsets.only(left: 7, right: 0),
              child: RichText(
                text: TextSpan(
                  text: " Friend activity",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text:
                          "\n Know which events your friends are interested in.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
          const Divider(
            // height: 250,
            thickness: 1,
            indent: 8,
            endIndent: 0,
            color: Colors.white70,
          ),
          Container(
            child: Card(
              color: Theme.of(context).dividerColor,
              // margin: EdgeInsets.only(top:47),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Push messages",
                        style: TextStyle(color: Colors.white)),
                    Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Theme.of(context).scaffoldBackgroundColor),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            // height: 180,
            thickness: 1,
            indent: 8,
            endIndent: 0,
            color: Colors.white70,
          ),
          Container(
            child: Card(
              color: Theme.of(context).dividerColor,
              // margin: EdgeInsets.only(top:47),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Emails from DICE",
                        style: TextStyle(color: Colors.white)),
                    Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Theme.of(context).scaffoldBackgroundColor),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            // height: 348,
            thickness: 1,
            indent: 8,
            endIndent: 0,
            color: Colors.white70,
          ),
          Row(children: [
            Container(
              margin: EdgeInsets.only(left: 7, right: 0),
              child: RichText(
                text: TextSpan(
                  text: " Recommendations",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text:
                          "\n   If we see an event we think you'd love,we'll let you\n know.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
          const Divider(
            // height: 100,
            thickness: 1,
            indent: 8,
            endIndent: 0,
            color: Colors.white70,
          ),
          Container(
            child: Card(
              color: Theme.of(context).dividerColor,
              // margin: EdgeInsets.only(top:47),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Push messages",
                        style: TextStyle(color: Colors.white)),
                    Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Theme.of(context).scaffoldBackgroundColor),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            // height: 180,
            thickness: 1,
            indent: 8,
            endIndent: 0,
            color: Colors.white70,
          ),
          Container(
            child: Card(
              color: Theme.of(context).dividerColor,
              // margin: EdgeInsets.only(top:47),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Emails from DICE",
                        style: TextStyle(color: Colors.white)),
                    Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Theme.of(context).scaffoldBackgroundColor),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            // height: 348,
            thickness: 1,
            indent: 8,
            endIndent: 0,
            color: Colors.white70,
          ),
          Row(children: [
            Container(
              margin: EdgeInsets.only(left: 7, right: 0),
              child: RichText(
                text: TextSpan(
                  text: " Offers and updates",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text:
                          "\n  We'll drop you an occasional update about competitions,\nprizes, and What's going on at DICE.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
          const Divider(
            // height: 100,
            thickness: 1,
            indent: 8,
            endIndent: 0,
            color: Colors.white70,
          ),
          Container(
            child: Card(
              color: Theme.of(context).dividerColor,
              // margin: EdgeInsets.only(top:47),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("  Push messages",
                        style: TextStyle(color: Colors.white)),
                    Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Theme.of(context).scaffoldBackgroundColor),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            // height: 180,
            thickness: 1,
            indent: 8,
            endIndent: 0,
            color: Colors.white70,
          ),
          Container(
            child: Card(
              color: Theme.of(context).dividerColor,
              // margin: EdgeInsets.only(top:47),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("  Emails from DICE",
                        style: TextStyle(color: Colors.white)),
                    Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Theme.of(context).scaffoldBackgroundColor),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            // height: 348,
            thickness: 1,
            indent: 8,
            endIndent: 0,
            color: Colors.white70,
          ),
          Container(
            child: Card(
              color: Theme.of(context).dividerColor,
              margin: EdgeInsets.only(left: 7, right: 0),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RichText(
                      text: TextSpan(
                        text:
                            "Emails from DICE's mates - artists, \nvenues,promoters you've",
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: "purchased \ntickets from",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Theme.of(context).scaffoldBackgroundColor),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            // height: 470,
            thickness: 1,
            indent: 8,
            endIndent: 0,
            color: Colors.white70,
          ),
          Row(children: [
            Container(
              margin: EdgeInsets.only(left: 7, right: 0),
              child: RichText(
                text: TextSpan(
                  text: "  DICE Squad",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text:
                          "\n   Help us make DICE even better by taking part in \n surveys, fan tests and more.",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
          const Divider(
            // height: 100,
            thickness: 1,
            indent: 8,
            endIndent: 0,
            color: Colors.white70,
          ),
          Container(
            child: Card(
              color: Theme.of(context).dividerColor,
              // margin: EdgeInsets.only(top:47),
              child: ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("  Count me in",
                        style: TextStyle(color: Colors.white)),
                    Switch(
                        value: true,
                        onChanged: (value) {},
                        activeColor: Theme.of(context).scaffoldBackgroundColor),
                  ],
                ),
              ),
            ),
          ),
          const Divider(
            // height: 610,
            thickness: 1,
            indent: 8,
            endIndent: 0,
            color: Colors.white70,
          ),
        ],
      )),
    );
  }
}
