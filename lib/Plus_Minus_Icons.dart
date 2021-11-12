import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class RoundIcons extends StatelessWidget {
  RoundIcons(
      {this.pressAdd,
        this.pressSub,
        this.longPress,
        this.unHold,
        this.longMinus,
        this.unHoldd});

  final Function pressAdd;
  final Function pressSub;
  final Function longPress;
  final Function unHold;
  final Function longMinus;
  final Function unHoldd;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTapDown: longPress,
          onTapUp: unHold,
          onTap: pressAdd,
          child: Icon(FontAwesomeIcons.plus, size: 50.0),
        ),
        SizedBox(
          width: 10.0,
        ),
        GestureDetector(
          onTapDown: longMinus,
          onTapUp: unHoldd,
          onTap: pressSub,
          child: Icon(
            FontAwesomeIcons.minus,
            size: 50.0,
          ),
        )
      ],
    );
  }
}