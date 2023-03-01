import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFF085EAF),
        boxShadow: [
          BoxShadow(
            color: Color(0xFF085EAF),
            blurRadius: 10,
          )
        ],
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            bottomRight: Radius.circular(60)
        ),
      ),
      width: double.infinity,
      height: 320,
      child:  Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 5,
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
                  children: [
                      const Icon(
                          Icons.wallet,
                          color: Colors.white,
                        size: 50,
                      ),
                      Image.asset(
                        'images/user-icon.png',
                        width: 45,
                        height: 45,
                      ),
                  ],
                ),
                  const Text(
                    'Hello, Mohamed Cherkaoui !',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15
                    ),
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