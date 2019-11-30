import 'package:flutter/cupertino.dart';
import 'package:love_pups_app/mocks/dog_data.mock.dart';
import 'package:love_pups_app/shared/models/dog_entity.model.dart';
import 'package:love_pups_app/widgets/dog_card.widget.dart';

class DogCardStack extends StatelessWidget {
  Size _screenSize;
  final _dogs = DOG_DATA;

  List<Widget> _getDogCards() {
    final widgets = new List<Widget>();
    final length = this._dogs.length;
    for (var i = 0; i < length; i++) {
      widgets.add(this._getDogCard(i));
    }
    return widgets;
  }

  List<Widget> _getDogCardsSingle() {
    final widgets = new List<Widget>();
    final length = 1;
    for (var i = 0; i < length; i++) {
      widgets.add(this._getDogCard(i));
    }
    return widgets;
  }

  Widget _getDogCard(index) {
    final DogEntity dog = this._dogs[index];
    return Positioned(
      top: (this._screenSize.height / 4).toDouble() + (index * 5),
      child: DogCard(dog: dog, index: index),
    );
  }

  @override
  Widget build(BuildContext context) {
    this._screenSize = MediaQuery.of(context).size;

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: this._getDogCard(0)
    );
  }
}
