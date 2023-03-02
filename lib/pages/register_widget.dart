import 'package:bankly/bottom_navigation_bar.dart';
import 'package:bankly/components/app_text_field_component.dart';
import 'package:bankly/util/app_color.dart';
import 'package:flutter/material.dart';

class RegisterWidget extends StatelessWidget {
  const RegisterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.scaffoldBackColor,
        elevation: 0,
        toolbarHeight: 150,
        title:  Text(
          'Register',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColor.valhala
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon:  Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Icon(
                Icons.arrow_back_outlined,
                color: AppColor.valhala,
            ),
          ),
          onPressed: () {  },
        ),
      ),
      body: SizedBox(
          width: 300,
          height: 600,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                          Form(
                              child: AppTextField(
                                inputTextHint: 'Enter your full name',
                              ),
                          )
                      ],
                  ),
                  ElevatedButton(onPressed: (){}, child: Container())
              ],
            ),
          ),
      ),
    );
  }

}