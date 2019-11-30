import 'dart:math';

import 'package:flutter/material.dart';
import 'package:love_pups_app/mocks/dog_data.mock.dart';
import 'package:love_pups_app/widgets/dog_card.widget.dart';

class DogListScreen extends StatelessWidget {
  static String routeName = '/dog-list';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DogCard(dog: DOG_DATA[Random().nextInt(DOG_DATA.length)]),
      ),
    );
  }
}
