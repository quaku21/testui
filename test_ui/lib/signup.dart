import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: const [
          Expanded(
            child: Image(
              image: AssetImage('images/Pictures.png'),
            ),
          ),
          Expanded(child: Text('Sign Up')),
        ],
      ),
    );
  }
}
