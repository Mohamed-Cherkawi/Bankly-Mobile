import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavigationAppBar extends StatelessWidget {
  const NavigationAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const GNav(
      backgroundColor: Colors.black,
      color: Colors.white,
      tabBackgroundColor: Colors.white,
      padding: EdgeInsets.all(15),
      selectedIndex: 0,
      gap: 8,
      tabs: [
        GButton(
          icon: Icons.home,
          text: 'Home',
        ),
        GButton(
          icon: Icons.supervised_user_circle_outlined,
          text: 'Contacts',
        ),
        GButton(
          icon: Icons.wallet,
          text: 'Wallet',
        ),
        GButton(
          icon: Icons.settings,
          text: 'Settings',
        ),
      ],
    );
  }

}