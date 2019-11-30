import 'dart:math';

import 'package:flutter/material.dart';
import 'package:love_pups_app/mocks/dog_data.mock.dart';
import 'package:love_pups_app/widgets/dog_card.widget.dart';

class DogListScreen extends StatelessWidget {
  static String routeName = '/dog-list';
  DogCard activeDogCard;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text('Logo'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              print('change card');
            },
          )
        ],
      ),
      body: Center(
        child: DogCard(dog: DOG_DATA[Random().nextInt(DOG_DATA.length)]),
      ),
    );
  }
}
