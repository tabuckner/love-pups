import 'package:flutter/material.dart';

class RaisedRoundedIconButton extends StatelessWidget {
  final double size;
  final double iconSize;
  final double iconPadding;
  final IconData icon;
  final Color iconColor;
  final Color backgroundColor;
  final double elevation;
  final Function onPressed;

  RaisedRoundedIconButton({
    @required this.size,
    @required this.iconSize,
    @required this.icon,
    @required this.iconColor,
    @required this.iconPadding,
    @required this.backgroundColor,
    @required this.elevation,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.size,
      height: this.size,
      child: RawMaterialButton(
        padding: EdgeInsets.all(this.iconPadding),
        elevation: this.elevation,
        shape: CircleBorder(),
        fillColor: this.backgroundColor,
        child: Icon(
          this.icon,
          color: this.iconColor,
          size: this.iconSize,
        ),
        onPressed: this.onPressed,
      ),
    );
  }
}
