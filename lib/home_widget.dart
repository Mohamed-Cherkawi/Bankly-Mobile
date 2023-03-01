import 'package:bankly/components/home/header.component.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children:  [
          HomeHeader(),
      ]
      ),
    );
  }

}