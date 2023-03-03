import 'package:flutter/material.dart';

import 'package:bankly/util/app_color.dart';

class AuthButtonWidget extends StatelessWidget {
  final String textButton;
  final String routeToNavigate;

  const AuthButtonWidget(this.textButton, this.routeToNavigate, {super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
              color: AppColor.darkBlue,
              blurRadius: 5,
              offset: const Offset(0, 2)
          )
        ],
        gradient: LinearGradient(
          colors: [
            AppColor.marinerBlue,
            AppColor.darkBlue,
          ],
          stops: const [0.1 , 1],
          //begin: AlignmentDirectional.topStart,
          //end: Alignment.bottomRight
        ),
      ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            minimumSize: const Size(350, 75),
            backgroundColor: Colors.transparent,
            disabledBackgroundColor: Colors.transparent,
            shadowColor: Colors.transparent
        ),
        onPressed: () {
          Navigator.pushNamed(context, routeToNavigate);
        },
        child:  Text(
          textButton,
          style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

}