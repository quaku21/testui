import 'package:flutter/material.dart';
import 'package:testui/styles.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

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
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Image(image: AssetImage('images/Group 4.png')),
                  Image(image: AssetImage('images/Group 3.png')),
                ],
              ),
              Center(
                child: Row(
                  children: const [
                    Image(image: AssetImage('images/logo.png')),
                    Text('Test UI'),
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
