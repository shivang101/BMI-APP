import 'package:flutter/material.dart';
import 'package:learn_to_git/Constants.dart';

class IconContent extends StatelessWidget {

  IconContent({@required this.text, @required this.icon} );

final String text;
final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon,size: 80,),
        SizedBox(
          height: 15.0,
        ),
        Text (text,style: kInputPage,),
      ],
    );
  }
}