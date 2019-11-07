import 'package:flutter/material.dart';
import '../shared/models/dog_entity.model.dart';

class DogCard extends StatelessWidget {
  final DogEntity dog;
  final int index;

  DogCard({
    @required this.dog,
    @required this.index,
  });

  int get widthModifier => ((this.index * 4) * -1);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final fullName = '${dog.name.first} ${dog.name.last}';
    return Container(
      child: Card(
        elevation: 4,
        child: Container(
          width: (screenSize.width * .6) - widthModifier,
          height: (screenSize.height * .4) - widthModifier,
          child: Center(
            child: Text(fullName),
          ),
        ),
      ),
    );
  }
}
