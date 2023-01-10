import "package:flutter/material.dart";
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {

  List<Transaction> userTransactions = [];

  TransactionList({required this.userTransactions});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
              child: Row(children: <Widget>[
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.purple,
                  width: 2,
                )),
                padding: const EdgeInsets.all(10),
                child: Text(
                  '\$${userTransactions[index].amount.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.purple,
                  ),
                )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.purple, width: 2)
                    // ),
                    child: Text(
                  userTransactions[index].title,
                  style: const TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
                Container(
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.purple, width: 2)
                    // ),
                    child: Text(
                  DateFormat('yyyy-MM-dd').format(userTransactions[index].date),
                  style: const TextStyle(
                    color: Colors.grey,
                  ),
                ))
              ],
            )
          ]));
                },
        itemCount: userTransactions.length,
      )
    );
  }
}
