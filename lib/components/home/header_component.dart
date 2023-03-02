import 'package:flutter/material.dart';

import '../../util/app_color.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        gradient: LinearGradient(
            colors: [
                AppColor.marinerBlue,
                AppColor.darkBlue
            ],
          stops: const [0.1 , 1],
          begin: AlignmentDirectional.topStart,
          end: Alignment.bottomRight
        ),
        boxShadow:  [
          BoxShadow(
            color: AppColor.darkBlue,
            blurRadius: 10,
          )
        ],
        borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(60)
        ),
      ),
      width: double.infinity,
      height: 320,
      child:  Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 20
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                      Icon(
                          Icons.wallet,
                          color: Colors.white,
                        size: 40,
                      ),
                    Icon(
                      Icons.person_2_rounded,
                      color: Colors.white,
                      size: 40,
                    )
                  ],
                ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: const [
                      Text(
                        'Hello , ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        'Mohamed Cherkaoui !',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  )
              ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  '\$ 27,230',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    letterSpacing: 2
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Your Balance',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                    ),
                  ),
                ),

              ],
            ),
          ],
        ),
      ),
    );
  }
}