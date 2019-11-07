import 'package:flutter/material.dart';

import '../mocks/dog_data.mock.dart';

class DogCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final myDog = DOG_DATA[0];
    final fullName = '${myDog.name.first} ${myDog.name.last}';
    print(myDog.name);
    return Container(
      child: Text(fullName),
    );
  }
}
