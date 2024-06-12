//import 'package:dice/automatic.dart';
import 'package:flutter/material.dart';

class privacy extends StatefulWidget {
  const privacy({Key? key}) : super(key: key);

  @override
  State<privacy> createState() => Mypriv();
}

class Mypriv extends State<privacy> {
  @override
  bool one = true;
  bool two = true;
  bool three = true;
  bool four = true;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Privacy', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      //margin: EdgeInsets.only(top: 25, left: 25, right: 25),
      backgroundColor: Colors.black,
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      body: SingleChildScrollView(
        child: Container(
          child: new Column(
            // child: Stack(
            children: <Widget>[
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 7, right: 0),
                    child: RichText(
                      text: TextSpan(
                        text: "  Followers",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text:
                                "\n   Let friends know what you're interested in.\nShare the events you've saved and booked.",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
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
                        TextButton(
                          child: Text("Automatically accept new followers",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16,
                                  color: Colors.white)),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (ctx) => AlertDialog(
                                backgroundColor: Colors.white,
                                title: (RichText(
                                  text: TextSpan(
                                    text: "Automatically accept new followers",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                    children: [
                                      TextSpan(
                                        text:
                                            "\nHeads up,your existing follow requests will now be approved.",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: Colors.grey,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                )),
                                // Text("Log out",style: TextStyle(fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold,
                                // ),
                                // ),
                                actions: <Widget>[
                                  Container(
                                    padding:
                                        EdgeInsets.only(left: 10, right: 120),
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  (privacy())),
                                        );
                                      },
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor: Colors.black,
                                          fixedSize: Size(50, 20),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30))),
                                      child: const Text(
                                        'OK',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                            // Navigator.push(
                            // context,
                            // MaterialPageRoute(builder: (context)=> (Auto())),
                            // );
                          },
                        ),
                        Switch(
                            value: true,
                            onChanged: (value) {},
                            activeColor:
                                Theme.of(context).scaffoldBackgroundColor),
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
              Row(
                children: [
                  Container(
                    // margin: EdgeInsets.only(top:95,left: 4),
                    margin: EdgeInsets.only(left: 7, right: 0),
                    child: Text(
                      "  What you're Sharing",
                      style: TextStyle(
                          fontSize: 19,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
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
                  // margin: EdgeInsets.only(top:120),
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: " 🤍 Saved Events",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text:
                                    "\n Your followers will see which events you've got saved",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Switch(
                            value: true,
                            onChanged: (value) {},
                            activeColor:
                                Theme.of(context).scaffoldBackgroundColor),
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
                  // margin: EdgeInsets.only(top:176),
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: " 🎵 Music Preferences",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text:
                                    "\n Your followers will see events you might be into,\n based on what we know you like",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Switch(
                            value: true,
                            onChanged: (value) {},
                            activeColor:
                                Theme.of(context).scaffoldBackgroundColor),
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
              Container(
                child: Card(
                  color: Theme.of(context).dividerColor,
                  // margin: EdgeInsets.only(top:232),
                  child: ListTile(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            text: " 🎟️ Bookings",
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                            children: [
                              TextSpan(
                                text:
                                    "\n Your followers will be able to see which events \nyou've booked tickets for.",
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Switch(
                            value: true,
                            onChanged: (value) {},
                            activeColor:
                                Theme.of(context).scaffoldBackgroundColor),
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
          ),
        ),
      ),
    );
  }
}
