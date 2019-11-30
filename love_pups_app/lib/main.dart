import 'package:flutter/material.dart';
import 'package:love_pups_app/screens/splash_screen.dart';

void main() => runApp(
  MaterialApp(
    // home: SplashScreen(),
    routes: {
      '/': (ctx) => SplashScreen(),
    },
  )
);
