import 'package:bankly/enums/operation_type.dart';
import 'package:bankly/util/home_activity_component_data.dart';
import 'package:flutter/material.dart';

class ActivityWidget extends StatelessWidget {
  final List<HomeActivityUtil> activities = [
    HomeActivityUtil('Anass Choubri', '2 hours ago', 250.00, OperationType.received),
    HomeActivityUtil('Ossama Souyari', 'yesterday', 138.50, OperationType.sent),
    HomeActivityUtil('Mohamed Maitite', '1 week ago', 531.00, OperationType.received),
    HomeActivityUtil('Salima Foulad', '10 week ago', 31.00, OperationType.received),
    HomeActivityUtil('Firdaouss Cherkaoui', '1 year ago', 10.00, OperationType.sent)
  ];

  ActivityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
                Text(
                    'Activity',
                    style: TextStyle(
                      fontWeight: FontWeight.w600
                    ),
                ),
              Text(
                'View all',
                style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.normal
                ),
              )
            ],
          ),
          const SizedBox(height: 10),
          for(HomeActivityUtil activity in activities)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 10),
            decoration:  BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 4,
                    offset: Offset(0,3)
                  )
                ]
            ),
            width: 400,
            height: 80,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'images/user-account.png',
                      width: 50,
                      height: 50,
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      width: 230,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(
                            activity.accountHolderName,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(activity.date)
                        ],
                      ),
                    ),
                  ],
                ),
                (activity.operationType == OperationType.received)
                    ?
                   Text(
                     '+\$${activity.amount.toString()}',
                     style: const TextStyle(color: Colors.green),
                   )
                   :
                Text(
                  '-\$${activity.amount.toString()}',
                  style: const TextStyle(color: Colors.red),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}