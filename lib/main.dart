import 'package:flutter/material.dart';
import 'package:testui/booking_details.dart';
import 'package:testui/lecture_halls.dart';
import 'package:testui/signin.dart';
import 'package:testui/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'user_details.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyDrHXR97v0r-l-nUMezeSPYHzIY6Sl0dUU",
      appId: "1:340120392837:web:93927493b1877fd27605ec",
      messagingSenderId: "340120392837",
      projectId: "testui-eb982",
      storageBucket: "testui-eb982.appspot.com",
    ),
  );
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
        BookingDetails.id: (context) => const BookingDetails(),
      },
      home: const SignInScreen(),
    );
  }
}
