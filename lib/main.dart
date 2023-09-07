import 'package:flutter/material.dart';
import 'package:logined/screens/splash.dart';

const SAVE_KEY_NAME = 'UsernameLoggedIn';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Sample',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const ScreenSplash(),
    );
  }
}
