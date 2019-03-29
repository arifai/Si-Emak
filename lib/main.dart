import 'package:flutter/material.dart';
import 'auth/loginscreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  welcomePage(){
    return LoginScreen();
  }

  @override
  Widget build(BuildContext context) {
    welcomePage();
    return MaterialApp(
      title: 'Ayam Login',
      theme: ThemeData(        
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: welcomePage(),
      )
    );
  }
}

