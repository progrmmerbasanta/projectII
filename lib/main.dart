import 'package:flutter/material.dart';
import 'package:shopkeeper_khata/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Email and Password Login',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
     
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

