import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {

  ReusableCard({this.tap, this.iconColumn,this.color});

  final Function tap;
  final Widget iconColumn;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        margin: EdgeInsets.all(15.0),
        child: iconColumn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: color,
        ),
      ),
    );
  }
}
