import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:testui/custom_widgets/materialbuttonclass.dart';
import 'package:testui/lecture_halls.dart';
import 'package:testui/signup.dart';
import 'package:testui/styles.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);
  static const String id = "SignInScreen";

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  late String _email, _password;
  bool _isPasswordVisible = false;

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
                      onChanged: (password) {
                        _password = password.trim();
                      },
                      obscureText: !_isPasswordVisible,
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
                                _isPasswordVisible = !_isPasswordVisible;
                              });
                            }),
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
                      onpressed: () async {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const Center(
                                  child: CircularProgressIndicator());
                            });
                        await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: _email, password: _password)
                            .then((value) {
                          Navigator.pushReplacementNamed(
                              context, LectureHalls.id);
                        }).catchError((error) {
                          showDialog(
                              context: context,
                              builder: (context) {
                                return Material(
                                  child: ScaffoldMessenger(
                                    child: Center(
                                      child: Text(
                                        error.toString(),
                                      ),
                                    ),
                                  ),
                                );
                              });
                          Future.delayed(const Duration(seconds: 2), () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                          });
                        });
                      },
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
                          Navigator.pushReplacementNamed(
                              context, SignUpScreen.id);
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
