import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableWidget extends StatelessWidget {
  ReusableWidget({@required this.color, this.cardChild, this.onPress});

  Color color;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
        height: 300.0,
        width: 179.0,
      ),
    );
  }
}
