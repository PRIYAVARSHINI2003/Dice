//import 'card.dart';
//import 'package:dice/cards.dart';
import 'package:dice/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:dice/createaccount.dart';
import 'package:flutter/material.dart';

class otp extends StatefulWidget {
  const otp({Key? key}) : super(key: key);

  @override
  State<otp> createState() => otppage();
}

class otppage extends State<otp> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String _otp;
  final FirebaseAuth auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    var code = "";
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.only(top: 150),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "A four-digit DICE code has been sent to ",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey,
                        ),

                        //RichText( text:
                        children: [
                          TextSpan(
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          //children: [
                          TextSpan(
                            text:
                                ".Please enter it below to validate your device. ",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: TextFormField(
                        onChanged: (value) {
                          code = value;
                        },
                        onSaved: (value) {
                          _otp = value!;
                        },
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please enter valid OTP";
                          } else if (value.length != 6) {
                            return "Invalid OTP";
                          }
                          return null;
                        },
                        keyboardType: TextInputType.phone,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.digitsOnly
                        ],
                        decoration: InputDecoration(
                          //hintText: "Username",
                          //helperText: "Enter username/email ",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    Text(
                      "Didn't receive SMS or need help?",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 120, 25, 0),
                      child: ElevatedButton(
                        onPressed: () {
                          //async {
                          //   try {
                          //     PhoneAuthCredential credential =
                          //         PhoneAuthProvider.credential(
                          //             verificationId: MyHome.verify,
                          //             smsCode: code);
                          //
                          //     // Sign the user in (or link) with the credential
                          //     await auth.signInWithCredential(credential);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => (Myacc())),
                          );
                          // } catch (e) {
                          //   print("Wrong Otp");
                          // }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            fixedSize: Size(2000, 50),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80))),
                        child: const Text(
                          'SUBMIT',
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
    );
  }
}
