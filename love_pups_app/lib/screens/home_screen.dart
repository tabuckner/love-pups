import 'package:flutter/material.dart';

import '../widgets/dog_card.widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DogCard(),
      ),
    );
  }
}
