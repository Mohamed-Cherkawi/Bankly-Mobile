import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../util/app_color.dart';

class OperationsWidget extends StatelessWidget {
  const OperationsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(10, 35, 10, 45),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children:  [
            Container(
              decoration: BoxDecoration(
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
                        AppColor.darkBlue
                      ],
                      stops: const [0.1 , 1],
                      begin: AlignmentDirectional.topStart,
                      end: Alignment.bottomRight
                  ),
                  borderRadius: BorderRadius.circular(20)
              ),
              width: 120,
              height: 150,
              child:  Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 7,
                      horizontal: 20
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  const [
                        Icon(
                            color: Colors.white,
                            size: 35,
                            Icons.file_upload_outlined
                        ),
                        Text(
                            'Send\nMoney',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700
                            ),
                        )
                    ],
                  ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5,
                      offset: Offset(0, 2)
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
              width: 120,
              height: 150,
              child:  Padding(
                padding: const EdgeInsets.symmetric(
                    vertical: 7,
                    horizontal: 20
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:  [
                    Icon(
                        color: AppColor.darkBlue,
                        size: 35,
                        Icons.file_download_outlined
                    ),
                     Text(
                      'Request\nPayment',
                      style: TextStyle(
                          color: AppColor.darkBlue,
                          fontWeight: FontWeight.w700
                      ),
                    )
                  ],
                ),
              ),
            ),
            SvgPicture.asset(
              'icons/ellipsis.svg',
              width: 24,
              height: 24,
            )
          ],
        ),
      ),
    );
  }

}