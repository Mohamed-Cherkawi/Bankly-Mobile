import 'package:flutter/material.dart';

import '../components/home/header_component.dart';
import '../components/home/operations_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView(
        children:  const [
          HomeHeader(),
          OperationsWidget(),
      ]
      ),
    );
  }

}