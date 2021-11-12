import 'package:flutter/material.dart';
import 'FirstPage.dart';
import 'SecondPage.dart';
import 'ThirdPage.dart';
void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes:{
        '/':(context)=> IntroPage(),
        // '/first': (context)=> IntroPage(),
        '/Second': (context)=> ResultPage(),
      } ,

    );
  }
}
