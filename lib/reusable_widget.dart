import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ReusableWidget extends StatelessWidget {
  ReusableWidget({required this.color, this.cardChild});

  Color color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color, //Color(0xFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
      height: 300.0,
      width: 179.0,
    );
  }
}
