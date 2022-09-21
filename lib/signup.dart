import 'package:flutter/material.dart';
import 'package:testui/custom_widgets/materialbuttonclass.dart';
import 'package:testui/signin.dart';
import 'package:testui/styles.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);
  static const String id = "SignUpScreen";

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                    children: const [
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
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 130.0, vertical: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "First Name",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 130.0, vertical: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Other Names",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 130.0, vertical: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Email",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 130.0, vertical: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Password",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 130.0, vertical: 10),
                    child: TextFormField(
                      decoration: const InputDecoration(
                        hintText: "ID",
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 130.0),
                    child: MaterialButtonClass(
                      minwidth: double.infinity,
                      buttoncolor: KColor1,
                      text: "Sign Up",
                      onpressed: () {},
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
          ),
        ],
      ),
    );
  }
}
