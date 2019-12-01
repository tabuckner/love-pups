import 'package:flutter/material.dart';
import 'package:love_pups_app/shared/providers/dog_entity.provider.dart';
import 'package:love_pups_app/widgets/dog_card.widget.dart';
import 'package:provider/provider.dart';

class DogListScreen extends StatelessWidget {
  static String routeName = '/dog-list';

  @override
  Widget build(BuildContext context) {
    final dogEntityProvider =
        Provider.of<DogEntityProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Logo'),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              dogEntityProvider.progressDogEntityQueue();
            },
          )
        ],
      ),
      body: Center(
        child: Consumer<DogEntityProvider>(
          builder: (context, dogEntities, child) => Stack(
            children: [
              DogCard(
                dog: dogEntities.nextDogEntity,
              ),
              DogCard(
                dog: dogEntities.currentDogEntity,
              )
            ],
          ),
        ),
      ),
    );
  }
}
