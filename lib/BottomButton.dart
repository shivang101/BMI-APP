import 'package:flutter/material.dart';
import 'package:learn_to_git/Constants.dart';
class BottomButton extends StatelessWidget {

  BottomButton({@required this.text,});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 5, 10, 10),
      padding: EdgeInsets.only(bottom : 10.0),
      decoration: BoxDecoration(
        color: kBottomContainerColor,
        borderRadius: BorderRadius.circular(15.0),
      ),
      height: kBottomContainerHeight,
      child: Center(
        child: Text(text,style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.w900
        ),),
      ),
    );
  }
}