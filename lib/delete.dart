//import 'package:dice/details.dart';
import 'package:flutter/material.dart';

class delete extends StatefulWidget {
  const delete({Key? key}) : super(key: key);

  @override
  State<delete> createState() => Mydelete();
}

class Mydelete extends State<delete> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Delete account',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
              child: Text(
            'This process is easy,but it\'s still hard for us to say bye.\n\n'
            'We\'ll deactivate your account first,and then after 15 days ,all of your data is deleted\n\n',
            style: TextStyle(color: Colors.white),
          )),
          Container(
            //padding: EdgeInsets.fromLTRB(7, 150, 50, 0),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  fixedSize: Size(160, 40),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(80))),
              child: const Text(
                'DELETE ACCOUNT',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            TextButton(
              onPressed: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => (Tabb())),
                // );
              },
              child: RichText(
                text: TextSpan(
                  text: 'Want to know how account deletion works? Read our',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                  children: [
                    TextSpan(
                      text: ' privacy policy.',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        color: Colors.black,
      ),
    );
  }
}
