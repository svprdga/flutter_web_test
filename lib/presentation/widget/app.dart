import 'package:flutter/material.dart';
import 'package:web_test/presentation/widget/screen/login_screen.dart';

class App extends StatelessWidget {

  // ****************************** LIFECYCLE ****************************** //

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Test',
      home: LoginScreen()
    );
  }
}