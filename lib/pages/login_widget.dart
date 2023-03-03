import 'package:bankly/components/authentication_button_component.dart';
import 'package:flutter/material.dart';

import 'package:bankly/components/app_text_field_component.dart';
import 'package:bankly/util/app_color.dart';

class LoginWidget extends StatelessWidget {
  const LoginWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackColor,
      body:  SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      Image.asset(
                          'images/cash-wallet.png',
                          width: 70,
                          height: 70,
                      ),
                       Padding(
                         padding: const EdgeInsets.only(left: 15),
                         child: Text(
                            'Bankly',
                            style: TextStyle(
                              color: AppColor.darkBlue,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Rubik',
                              letterSpacing: 5,
                              fontSize: 25
                            ),
                      ),
                       )
                  ],
                ),
                SizedBox(
                  height: 400,
                  width: 350,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      AppTextField(
                        inputTextHint: 'Enter your name or e-mail',
                      ),
                      AppTextField(
                        inputTextHint: 'Password',
                      ),
                      AuthButtonWidget('Log in','home'),
                    ],
                  ),
                ),
            const Text(
                'Having trouble logging in?',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                )
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'register');
              },
              child: const Text(
                  'Sign up',
                  style: TextStyle(
                      fontWeight: FontWeight.bold
                  )
              ),
            ),
            ],
          ),
      ),
    );
  }

}