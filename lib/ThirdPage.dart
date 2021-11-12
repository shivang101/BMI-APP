import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:learn_to_git/Constants.dart';
import 'package:learn_to_git/ReusableCard.dart';
import 'BottomButton.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.interpretation, this.bmiResults, this.resultText});

  final String bmiResults;
  final String resultText;
  final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(FontAwesomeIcons.bars),
        title: Text('BMI CALCULATOR'),
        elevation: 10.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15),
              alignment: Alignment.bottomLeft,
              child: Text("Your Result",style: kTitleTextStyle,),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              color: kInactiveCardColor,
              iconColumn: Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                Text(resultText,style: kResultTextStyle,),
                Text(bmiResults,style: kBMITextStyle,),
                Text(interpretation,style: kBodyTextStyle,textAlign: TextAlign.center,),
                ],
              ),
            ),
          ),
          GestureDetector(child: BottomButton(text: "RE-CALCULATE",),onTap: (){
            Navigator.pop(context);
          },)
        ],
      ),
    );
  }
}
