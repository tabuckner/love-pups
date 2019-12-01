import 'package:flutter/material.dart';
import 'package:love_pups_app/screens/dog_list_screen.dart';
import 'package:love_pups_app/screens/splash_screen.dart';
import 'package:love_pups_app/shared/providers/dog_entity.provider.dart';
import 'package:provider/provider.dart';

void main() => runApp(
      ListenableProvider<DogEntityProvider>(
        create: (context) => DogEntityProvider(),
        dispose: (context, value) => value.dispose(),
        child: MaterialApp(
          theme: ThemeData(
            primaryColor: Colors.white,
            accentColor: Color.fromRGBO(255, 51, 102, 1),
            appBarTheme: AppBarTheme(
              iconTheme: IconThemeData(opacity: .66),
              textTheme: TextTheme(
                title: TextStyle(
                  color: Color.fromRGBO(255, 51, 102, 1),
                  fontSize: 24,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          routes: {
            '/': (ctx) => SplashScreen(),
            DogListScreen.routeName: (ctx) => DogListScreen(),
          },
        ),
      ),
    );
