import 'package:flutter/material.dart';
import 'package:learn_to_git/Constants.dart';
class InputPage extends StatefulWidget {
  const InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}
//this file has been fixed on feature1

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
         child: Center(
           child: Column(
             children:<Widget> [
               Container(
                 child: Text("Hello World"),
               ),
               GestureDetector(
                  onTap: (){
                    setState(() {
                      Navigator.pushNamed(context, '/first');
                    });
                  },
                  child: Container(
                    child: Text('This project is made by\n'
                        '\nShivang Mathur(2K20/CO/432)',style: kfirstPageStyle,)
                  ),
                ),
             ],
           ),
         ),
      ),
    );
  }
}
