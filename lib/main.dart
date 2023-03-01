import 'package:flutter/material.dart';

import 'home_widget.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
        scaffoldBackgroundColor: const Color(0xFFFAFAFA),
      ),
      routes: {
        '/' : (context) => const HomePage(),
        //'profile' : (context) => Scaffold(),
        //'logIn' : (context) => Scaffold(),
        //'signUp' : (context) => Scaffold(),
        //'transaction' : (context) => Transaction()
      },
    );
  }

}