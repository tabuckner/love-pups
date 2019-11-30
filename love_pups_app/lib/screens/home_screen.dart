import 'dart:ui' as prefix0;

import 'package:flutter/material.dart';
import 'package:love_pups_app/screens/dog_list_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: <Widget>[
              bgImage(screenSize),
              Positioned.fill(
                child: BackdropFilter(
                  filter: prefix0.ImageFilter.blur(
                    sigmaX: 2.5,
                    sigmaY: 2.5,
                  ),
                  child: Container(
                    color: Colors.black.withOpacity(0),
                  ),
                ),
              ),
              welcomeText(screenSize),
              bottomSheet(screenSize, context),
            ],
          ),
        ),
      ),
    );
  }

  Container welcomeText(Size screenSize) {
    return Container(
      padding: EdgeInsets.all(24),
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.only(top: 12),
        child: Column(
          children: <Widget>[
            Text(
              'Logo',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            Container(
              margin: EdgeInsets.only(top: 36),
              child: Text(
                'Welcome to LovePups',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              child: Text(
                'The little app that lets you enjoy rating photos of pups anytime, anywhere.',
                style: TextStyle(fontSize: 16, color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bottomSheet(Size screenSize, BuildContext ctx) {
    return Container(
      width: double.infinity,
      height: screenSize.height / 4,
      margin: EdgeInsets.only(top: screenSize.height * 3 / 4),
      padding: EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(24),
          topRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: <Widget>[
          SizedBox(
            width: double.infinity,
            height: 44,
            child: RaisedButton(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Color.fromRGBO(255, 51, 102, 1),
              splashColor: Colors.white12,
              child: Text(
                'Let\'s Go',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              onPressed: () {
                Navigator.pushNamed(ctx, DogListScreen.routeName);
              },
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Have an account?'),
              Material(
                child: InkWell(
                  splashColor: Colors.black12,
                  borderRadius: BorderRadius.circular(4),
                  child: Container(
                    color: Colors.transparent,
                    padding: EdgeInsets.all(8),
                    child: Text(
                      'Log In',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                  onTap: () {},
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  Container bgImage(Size screenSize) {
    return Container(
      width: double.infinity,
      height: (screenSize.height * 3 / 4) + 24,
      child: Image.asset(
        'assets/images/home-page.jpeg',
        width: screenSize.width,
        height: screenSize.height,
        fit: BoxFit.cover,
      ),
    );
  }
}
