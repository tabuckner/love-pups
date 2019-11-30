import 'package:flutter/material.dart';
import 'package:love_pups_app/shared/models/dog_entity.model.dart';
import 'package:love_pups_app/widgets/components/raised_rounded_icon_button.widget.dart';

class DogDetailsScreen extends StatelessWidget {
  static String routeName = 'dog-details';
  final DogEntity dog;
  Size _screenSize;

  DogDetailsScreen({
    @required this.dog,
  });

  int get ageInHumanYears => this.dog.dob.age ~/ 7;

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
              color: Colors.black,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.public,
              color: Color.fromRGBO(0, 0, 0, .56),
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
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget get _bio {
    return Text(
      this.dog.bio.text,
      softWrap: true,
      style: TextStyle(
        color: Colors.black,
        fontSize: 16,
      ),
    );
  }

Widget get _detailsInfo {
  return Container(
            padding: EdgeInsets.symmetric(
              horizontal: 32,
              vertical: 24,
            ),
            height: (this._screenSize.height / 3) * 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  children: [
                    this._nameRow,
                    this._breedRow,
                    this._bio
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        RaisedRoundedIconButton(
                          size: 72,
                          backgroundColor: Color.fromRGBO(38, 50, 56, 1),
                          onPressed: () {},
                          iconSize: 36,
                          icon: Icons.thumb_down,
                          elevation: 2,
                          iconColor: Colors.white,
                          iconPadding: 18,
                        ),
                        SizedBox(height: 8),
                        Text(
                          this._badText,
                          style: TextStyle(
                            color: Color.fromRGBO(38, 50, 56, 1),
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                    SizedBox(width: 24),
                    Column(
                      children: <Widget>[
                        RaisedRoundedIconButton(
                          size: 72,
                          backgroundColor: Color.fromRGBO(255, 51, 102, 1),
                          onPressed: () {},
                          iconSize: 36,
                          icon: Icons.thumb_up,
                          elevation: 2,
                          iconColor: Colors.white,
                          iconPadding: 18,
                        ),
                        SizedBox(height: 8),
                        Text(
                          this._goodText,
                          style: TextStyle(
                            color: Color.fromRGBO(255, 51, 102, 1),
                            fontSize: 14,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          );
}

String get _goodText => this.dog.gender == 'female' ? 'GoodGurl' : 'GoodBoi';

String get _badText => this.dog.gender == 'female' ? 'NastyGurl' : 'NastyBoi';

  @override
  Widget build(BuildContext context) {
    this._screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Container(
              height: this._screenSize.height / 3 + 24,
              width: double.infinity,
              child: Hero(
                tag: this.dog.image.imageUrl,
                child: Image.network(
                  this.dog.image.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: this._screenSize.height / 3),
              height: (this._screenSize.height / 3) * 2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24),
                  topRight: Radius.circular(24),
                ),
              ),
              child: this._detailsInfo,
            ),
          ],
        ),
      ),
    );
  }
}
