import 'package:bankly/service/transaction_service.dart';
import 'package:bankly/util/TransactionsList.dart';
import 'package:bankly/model/transaction_maper.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


class ActivityWidget extends StatelessWidget {
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
          FutureBuilder<List<Transaction>>(
            future: TransactionService.fetchTransactions(http.Client()),
            builder: (context,snapshot){
              if (snapshot.hasData) {
                return TransactionsList(transactions: snapshot.data!);
              } else if (snapshot.hasError) {
                return Text('No Activity To Show');
              }
              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            }
          ),
        ],
      ),
    );
  }
}