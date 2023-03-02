import 'package:flutter/material.dart';

import 'package:bankly/bottom_navigation_bar.dart';
import 'package:bankly/components/home/activity_component.dart';
import '../components/home/header_component.dart';
import '../components/home/operations_component.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar:  const NavigationAppBar(),
      body: ListView(
        children:   [
          const HomeHeader(),
          const OperationsWidget(),
          ActivityWidget(),
      ]
      ),
    );
  }

}