import 'package:flutter/material.dart';
import 'package:testui/custom_widgets/materialbuttonclass.dart';
import 'package:testui/signup.dart';
import 'package:testui/styles.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static const String id = "SignInScreen";

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                  const SizedBox(
                    height: 10,
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
                        horizontal: 130.0, vertical: 20),
                    child: MaterialButtonClass(
                      minwidth: double.infinity,
                      buttoncolor: KColor1,
                      text: "Sign In",
                      onpressed: () {},
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account?",
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, SignUpScreen.id);
                        },
                        child: const Text(
                          "Sign up",
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
