import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Welcome to Homescreen',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
