import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:bankly/pages/login_widget.dart';
import 'package:bankly/pages/register_widget.dart';
import 'package:bankly/util/app_color.dart';
import 'pages/home_widget.dart';

void main(){
  runApp(const MyApp());
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    statusBarIconBrightness: Brightness.dark
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Roboto',
        primaryColor: AppColor.darkBlue,
        scaffoldBackgroundColor: AppColor.scaffoldBackColor,
      ),
      routes: {
        '/' : (context) => const LoginWidget(),
        'home' : (context) => const HomePage(),
        'register' : (context) => const RegisterWidget(),
        //'profile' : (context) => Scaffold(),
        //'transaction' : (context) => Transaction()
      },
    );
  }

}