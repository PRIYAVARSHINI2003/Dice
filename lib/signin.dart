//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:flutter/src/widgets/text.dart';
import 'otp.dart';

class MyHome extends StatefulWidget {
  @override
  const MyHome({Key? key}) : super(key: key);
  // static String verify = "";
  // static String _val = "";
  @override
  State<MyHome> createState() => MyHomePage();
}

class MyHomePage extends State<MyHome> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String _val;
  // var phone = "";

  TextEditingController inputController = TextEditingController();
  //TextEditingController countrycode = TextEditingController();

  //late String _num;
  //FirebaseAuth auth = FirebaseAuth.instance;
  //String verificationIdReceived = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.only(top: 170),
              child: Form(
                key: formKey,
                child: Scrollbar(
                  isAlwaysShown: false,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Welcome Titles
                      Text("SIGN IN/REGISTER",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                          )),
                      Text(
                          "We need your mobile number to verify your account and keep your tickets secure",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          )),

                      // Email Input Form
                      TextFormField(
                        onSaved: (value) {
                          _val = value!;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter valid phone number";
                          } else if (value.length != 15) {
                            return "Invalid mobile number";
                          }
                          return null;
                        },

                        decoration: InputDecoration(
                            labelText: "     🇮🇳 +91 81234 56789"),
                        keyboardType: TextInputType.phone,

                        // Only numbers can be entered.
                        controller: inputController,
                      ),
                      RichText(
                        text: TextSpan(
                          text: ' By registering you accept our ',
                          style: TextStyle(
                            color: Colors.grey,
                            //fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                          children: [
                            TextSpan(
                              text: ' Terms of use ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                //backgroundColor: Colors.teal,
                                fontSize: 20,
                              ),
                            ),
                            TextSpan(
                              text: ' and ',
                              style: TextStyle(
                                color: Colors.grey,
                                //fontWeight: FontWeight.bold,
                                //backgroundColor: Colors.teal,
                                fontSize: 20,
                              ),
                            ),
                            TextSpan(
                              text: ' Privacy Policy ',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                //backgroundColor: Colors.teal,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(25, 50, 25, 0),
                        child: ElevatedButton(
                          onPressed: () {
                            //
                            if (formKey.currentState!.validate()) {
                              formKey.currentState?.save();

                              if (_val.length == 15) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => (otp())),
                                );
                              } else {
                                print("Invalid phone number");
                              }
                            }
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              fixedSize: Size(2000, 50),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80))),
                          child: const Text(
                            'NEXT',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
