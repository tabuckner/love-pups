import 'package:flutter/material.dart';
import 'package:love_pups_app/screens/dog_details_screen.dart';
import 'package:love_pups_app/widgets/components/raised_rounded_icon_button.widget.dart';
import '../shared/models/dog_entity.model.dart';

class DogCard extends StatelessWidget {
  final DogEntity dog;
  final int index;
  final double _borderRadius = 24;
  final double _infoSectionHeight = 175;

  DogCard({
    @required this.dog,
    this.index,
  });

  Widget get _backgroundImage {
    return Container(
      child: Hero(
        tag: this.dog.image.imageUrl,
        child: Image.network(
          this.dog.image.imageUrl,
          fit: BoxFit.cover,
        ),
      ),
      width: double.infinity,
      height: double.infinity,
    );
  }

  Widget _nameRow({Color textColor, Color iconColor}) {
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
              color: textColor,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.public,
              color: iconColor,
            ),
          )
        ],
      ),
    );
  }

  Widget _breedRow({Color textColor}) {
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
              color: textColor,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }

  Widget _bio({Color textColor, bool summary}) {
    return Text(
      summary ? this.shortBio : this.bio,
      maxLines: summary ? 2 : null,
      overflow: summary ? TextOverflow.ellipsis : null,
      softWrap: true,
      style: TextStyle(
          color: textColor, fontSize: 16, fontWeight: FontWeight.w300),
    );
  }

  Widget get _infoSection {
    return Container(
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
      height: this._infoSectionHeight,
      padding: EdgeInsets.all(32),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          this._nameRow(
            textColor: Colors.white,
            iconColor: Color.fromRGBO(255, 255, 255, 0.56),
          ),
          this._breedRow(
            textColor: Color.fromRGBO(255, 255, 255, 0.56),
          ),
          FractionallySizedBox(
            widthFactor: .8,
            child: this._bio(
              textColor: Colors.white.withOpacity(.77),
              summary: true,
            ),
          ),
        ],
      ),
    );
  }

  Widget _infoIconButtonContainer(ctx) {
    return Container(
      color: Colors.transparent,
      width: double.infinity,
      height: this._infoSectionHeight,
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
                  onShowModalBottomSheet(ctx);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onShowModalBottomSheet(ctx) {
    Navigator.push(
      ctx,
      MaterialPageRoute(builder: (ctx) => DogDetailsScreen(dog: this.dog)),
    );
  }

  Widget _infoSectionStack(ctx) {
    return Stack(
      children: [
        this._infoSection,
        this._infoIconButtonContainer(ctx),
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

  String get bio {
    return this.dog.bio.text;
  }

  @override
  Widget build(BuildContext context) {
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
              this._infoSectionStack(context),
            ],
          ),
        ),
        elevation: 4,
        margin: EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
          bottom: 32
        ),
      ),
    );
  }
}
