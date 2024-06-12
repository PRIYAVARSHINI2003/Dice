import 'package:dice/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Myacc extends StatefulWidget {
  const Myacc({Key? key}) : super(key: key);

  @override
  State<Myacc> createState() => account();
}

class account extends State<Myacc> {
  bool isInstructionView = true;

  final oneController = TextEditingController();
  final twoController = TextEditingController();
  final threeController = TextEditingController();
  final fourController = TextEditingController();
  // _showResponse(BuildContext context, String title, String content) {
  //   showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       title: Text(title),
  //       content: Text(content),
  //     ),
  //   );
  // }

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String _firstname;
  late String _lastname;
  late String _email;
  late String _dob;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              padding: EdgeInsets.only(top: 100),
              child: Form(
                key: formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Welcome Titles
                    Text("CREATE ACCOUNT",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold)),
                    // Text("We need your mobile number to verify your \n account and keep yor tickets secure",
                    //     style: TextStyle(fontSize: 18,color: Colors.grey)),
                    // Email Input Form

                    TextFormField(
                      onSaved: (value) {
                        _firstname = value!;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your first name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "First name"),
                      controller: oneController,
                      keyboardType: TextInputType.name,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(
                          RegExp(r"[a-zA-Z]+|\s"),
                        )
                      ],
                    ),

                    TextFormField(
                      onSaved: (value) {
                        _lastname = value!;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your last name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "Last name"),
                      controller: twoController,
                      keyboardType: TextInputType.name,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.allow(
                          RegExp(r"[a-zA-Z]+|\s"),
                        )
                      ],
                      //controller: inputController,
                    ),
                    TextFormField(
                      onSaved: (value) {
                        _email = value!;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your email id";
                        } else if (RegExp(
                                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                            .hasMatch(value)) {
                        } else {
                          return "enter valid email";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "Email"),
                      controller: threeController,
                      keyboardType: TextInputType.emailAddress,
                    ),

                    TextFormField(
                      onSaved: (value) {
                        _dob = value!;
                      },
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your DOB";
                        }
                        return null;
                      },
                      decoration: InputDecoration(labelText: "Date of Birth"),
                      controller: fourController,
                      keyboardType: TextInputType.datetime,
                      // inputFormatters: <TextInputFormatter>[
                      //   FilteringTextInputFormatter.allow(
                      //     RegExp(
                      //         r"^(0[1-9]|1[012])[-/.](0[1-9]|[12][0-9]|3[01])[-/.](19|20)\\d\\d$"),
                      //   )
                      // ],
                    ),

                    RichText(
                      text: TextSpan(
                        text: "\nUpdates and Recommendations",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text:
                                "\nStay in touch with the bext events happening in",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                          TextSpan(
                            text: " your city",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Card(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        margin: EdgeInsets.only(bottom: 19, top: 0),
                        child: ListTile(
                          title: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text("Emails from DICE",
                                  style: TextStyle(color: Colors.black)),
                              Switch(
                                value: isInstructionView,
                                onChanged: (bool isOn) {
                                  setState(() {
                                    isInstructionView = isOn;
                                    print(isInstructionView);
                                  });
                                },
                                activeColor: Colors.blue,
                                inactiveTrackColor: Colors.grey,
                                inactiveThumbColor: Colors.grey,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                      child: ElevatedButton(
                        onPressed: () {
                          if (formKey.currentState != null &&
                              formKey.currentState!.validate()) {
                            formKey.currentState?.save();

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => (profile())),
                            );
                          } else {
                            print("Invalid credentials");
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            fixedSize: Size(1400, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(80))),
                        child: const Text(
                          'CREATE ACCOUNT',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
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
} // Sign In Button
