import 'package:flutter/material.dart';

import '../model/transaction_maper.dart';

class TransactionsList extends StatelessWidget {
  const TransactionsList({super.key, required this.transactions});

  final List<Transaction> transactions;

  @override
  Widget build(BuildContext context) {
        return Column(
          children: [
            for(Transaction transaction in transactions)
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 4,
                        offset: Offset(0, 3)
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
                          children: [
                            Text(
                              transaction.operatorReference,
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              transaction.createdAt,
                              style: const TextStyle(
                                  fontSize: 10
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  (transaction.type == 'DEPOSIT')
                      ?
                  Text(
                    '+\$${transaction.amount}',
                    style: const TextStyle(color: Colors.green),
                  )
                      :
                  Text(
                    '-\$${transaction.amount}',
                    style: const TextStyle(color: Colors.red),
                  )
                ],
              ),
            ),
          ],
        );
  }
}