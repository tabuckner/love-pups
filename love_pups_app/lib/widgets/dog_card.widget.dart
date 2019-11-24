import 'package:flutter/material.dart';
import '../shared/models/dog_entity.model.dart';

class DogCard extends StatelessWidget {
  final DogEntity dog;
  final int index;
  final double _borderRadius = 24;

  DogCard({
    @required this.dog,
    this.index,
  });

  Widget get _backgroundImage {
    return Container(
      child: Image.network(
        this.dog.image.imageUrl,
        fit: BoxFit.cover,
      ),
      width: double.infinity,
      height: double.infinity,
    );
  }

  Widget get _nameRow {
    return Container(
      height: 38,
      margin: EdgeInsets.only(
        bottom: 4,
      ),
      child: Row(
        children: <Widget>[
          Text(
            '${this.dog.name.first}, ${this.ageInHumanYears}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.public,
              color: Color.fromRGBO(255, 255, 255, 0.56),
            ),
          )
        ],
      ),
    );
  }

  Widget get _breedRow {
    return Container(
      margin: EdgeInsets.only(
        bottom: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            this.dog.image.breed,
            style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 0.56),
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget get _bio {
    return Text(
      this.shortBio,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
      style: TextStyle(
        color: Colors.white,
        fontSize: 16,
      ),
    );
  }

  Widget get _info {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color.fromRGBO(0, 0, 0, .86),
                Color.fromRGBO(0, 0, 0, 0),
              ],
            ),
          ),
          width: double.infinity,
          height: 175,
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              this._nameRow,
              this._breedRow,
              this._bio,
            ],
          ),
        ),
        Container(
          color: Colors.transparent,
          width: double.infinity,
          height: 175,
          padding: EdgeInsets.all(24),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              ClipOval(
                child: Material(
                  color: Colors.transparent,
                  child: IconButton(
                    icon: Icon(
                      Icons.info,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      print('Show Full Page.');
                    },
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }

  int get ageInHumanYears => this.dog.dob.age ~/ 7;

  String get shortBio {
    const maxCharacters = 125;
    return this.dog.bio.text.length < maxCharacters
        ? this.dog.bio.text
        : '${this.dog.bio.text.substring(0, maxCharacters)}...';
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    final fullName = '${dog.name.first} ${dog.name.last}';
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Card(
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.circular(this._borderRadius),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(this._borderRadius),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              this._backgroundImage,
              this._info,
            ],
          ),
        ),
        elevation: 4,
        margin: EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 16,
        ),
      ),
    );
  }
}
