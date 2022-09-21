import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:testui/custom_widgets/materialbuttonclass.dart';
import 'package:testui/lecture_halls.dart';
import 'package:testui/signin.dart';
import 'package:testui/styles.dart';
import 'package:testui/user_details.dart';
import 'package:provider/provider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const String id = "SignUpScreen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  late String _firstName, _otherNames, _email, _id, _password;
  bool _isStudent = false, _isPasswordVisible = false;

  void pushDetailsToProvider() {
    Provider.of<AllData>(context, listen: false).setFirstName = _firstName;
    Provider.of<AllData>(context, listen: false).setOtherNames = _otherNames;
    Provider.of<AllData>(context, listen: false).setEmail = _email;
    Provider.of<AllData>(context, listen: false).setID = _id;
    Provider.of<AllData>(context, listen: false).setISStudent = _isStudent;
    Provider.of<AllData>(context, listen: false).setFullName();
    //not taking password so making it 5
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              color: KColor1,
              child: const Image(
                image: AssetImage('images/welcomeimage.png'),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image(
                        image: AssetImage('images/Group 4.png'),
                      ),
                      Image(
                        image: AssetImage('images/Group 3.png'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                        image: AssetImage('images/logo.png'),
                      ),
                      Text(
                        'Test UI',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView(
                      shrinkWrap: true,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 130.0, vertical: 10),
                          child: TextFormField(
                            onChanged: (firstName) {
                              _firstName = firstName.trim();
                            },
                            decoration: const InputDecoration(
                              hintText: "First Name",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 130.0, vertical: 10),
                          child: TextFormField(
                            onChanged: (otherNames) {
                              _otherNames = otherNames.trim();
                            },
                            decoration: const InputDecoration(
                              hintText: "Other Names",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 130.0, vertical: 10),
                          child: TextFormField(
                            onChanged: (email) {
                              _email = email.trim();
                            },
                            decoration: const InputDecoration(
                              hintText: "Email",
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 130.0, vertical: 10),
                          child: TextFormField(
                            obscureText: !_isPasswordVisible,
                            onChanged: (password) {
                              _password = password.trim();
                            },
                            decoration: InputDecoration(
                                hintText: "Password",
                                suffixIcon: IconButton(
                                    icon: _isPasswordVisible
                                        ? const Icon(
                                            Icons.visibility,
                                          )
                                        : const Icon(Icons.visibility_off),
                                    onPressed: () {
                                      setState(() {
                                        _isPasswordVisible =
                                            !_isPasswordVisible;
                                      });
                                    })),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 130.0, vertical: 10),
                          child: TextFormField(
                            onChanged: (id) {
                              _id = id.trim();
                            },
                            decoration: const InputDecoration(
                              hintText: "ID",
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 120.0),
                          child: Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                value: _isStudent,
                                onChanged: (bool? value) {
                                  setState(() {
                                    _isStudent = value!;
                                  });
                                },
                              ),
                              const Text("Are you a student? ")
                            ],
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 130.0),
                          child: MaterialButtonClass(
                            minwidth: double.infinity,
                            buttoncolor: KColor1,
                            text: "Sign Up",
                            onpressed: () async {
                              //a lotta things gonna happen here
                              //first push everything to provider
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const Center(
                                        child: CircularProgressIndicator());
                                  });
                              pushDetailsToProvider();
                              await FirebaseFirestore.instance
                                  .collection('users')
                                  .doc(Provider.of<AllData>(context,
                                          listen: false)
                                      .getEmail)
                                  .set(Provider.of<AllData>(context,
                                          listen: false)
                                      .configureDatabaseMapAndReturn())
                                  .then((value) async {
                                await FirebaseAuth.instance
                                    .createUserWithEmailAndPassword(
                                        email: Provider.of<AllData>(context,
                                                listen: false)
                                            .getEmail,
                                        password: _password)
                                    .then((value) {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return const Material(
                                          child: ScaffoldMessenger(
                                            child: Center(
                                              child:
                                                  Text("Sign up Successful!"),
                                            ),
                                          ),
                                        );
                                      });
                                  Future.delayed(const Duration(seconds: 3),
                                      () {
                                    Navigator.pushReplacementNamed(
                                        context, LectureHalls.id);
                                    print("Done!");
                                  });
                                  //handle errors later
                                });
                              });
                              //push from provider to database then sign up the user with email and password
                            },
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              "Already have an account",
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushNamed(context, SignInScreen.id);
                              },
                              child: const Text(
                                "Sign In",
                                style: TextStyle(color: KColor1),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
