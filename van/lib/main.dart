import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:van/screen/signin_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // ignore: prefer_const_constructors
    options: FirebaseOptions(
        apiKey: "AIzaSyCqUq9rai5d_PdK5kFDS4ds3wm0xX4vknI",
        appId: "1:176335286481:android:6beaaaa4dcfc5debb315f0",
        messagingSenderId: "176335286481",
        projectId: "gogovan-d4908"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignInScreen(),
    );
  }
}
