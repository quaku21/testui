import 'package:flutter/material.dart';
import 'package:testui/lecture_halls.dart';
import 'package:testui/signin.dart';
import 'package:testui/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'user_details.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    ChangeNotifierProvider(
        create: (context) => AllData(), child: const MyApp()),
  );
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
        SignInScreen.id: (context) => const SignInScreen(),
        LectureHalls.id: (context) => const LectureHalls(),
      },
      home: const SignInScreen(),
    );
  }
}
