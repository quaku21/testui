import 'package:flutter/material.dart';
import 'package:testui/signin.dart';
import 'package:testui/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Test UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        SignUpScreen.id: (context) => const SignUpScreen(),
        SignInScreen.id: (context) => const SignInScreen()
      },
      home: const SignInScreen(),
    );
  }
}
