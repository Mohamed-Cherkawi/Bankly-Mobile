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
        toolbarHeight: 100,
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
          width: double.infinity,
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 40),
                      height: 350,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                              AppTextField(
                                    inputTextHint: 'Enter your full name',
                                  ),
                              AppTextField(
                                inputTextHint: 'E-mail address',
                              ),
                            AppTextField(
                              inputTextHint: 'Password',
                            ),
                            AppTextField(
                              inputTextHint: 'Confirm password',
                            ),
                          ],
                      ),
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                        boxShadow: [
                          BoxShadow(
                          color: AppColor.darkBlue,
                          blurRadius: 4
                          ),
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
                        onPressed: () { print('object'); },
                        child: const Text(
                        'Register',
                        style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    )

                ],
              ),
            ),
          ),
      ),
    );
  }

}