import 'dart:math';

import 'package:flutter/material.dart';
import 'package:love_pups_app/mocks/dog_data.mock.dart';
import 'package:love_pups_app/widgets/dog_card.widget.dart';
import 'package:love_pups_app/widgets/dog_card_stack.widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DogCard(dog: DOG_DATA[Random().nextInt(DOG_DATA.length)]),
      ),
    );
  }
}
