import 'dart:math';
import 'package:flutter/foundation.dart';

import 'package:love_pups_app/mocks/dog_data.mock.dart';
import 'package:love_pups_app/shared/models/dog_entity.model.dart';

class DogEntityProvider with ChangeNotifier {
  DogEntity _currentDogEntity = DogEntityProvider._randomDogEntity;
  DogEntity _nextDogEntity = DogEntityProvider._randomDogEntity;

  DogEntity get currentDogEntity => this._currentDogEntity;
  DogEntity get nextDogEntity => this._nextDogEntity;

  void progressDogEntityQueue() {
    this._currentDogEntity = this._nextDogEntity;

    DogEntity proposedNextDogEntity = DogEntityProvider._randomDogEntity;
    while (this._nextDogEntity == proposedNextDogEntity) {
      proposedNextDogEntity = DogEntityProvider._randomDogEntity;
    }
    this._nextDogEntity = proposedNextDogEntity;
    notifyListeners();
  }

  static DogEntity get _randomDogEntity {
    return DOG_DATA[Random().nextInt(DOG_DATA.length)];
  }
}
