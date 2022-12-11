import "package:flutter/material.dart";
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  const TransactionList({super.key});

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  final List<Transaction> _userTransactions = [
    Transaction(
        id: 'a1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 'a1', title: 'Supplies', amount: 39.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: _userTransactions.map((tx) {
          return Card(
              child: Row(children: <Widget>[
            Container(
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                decoration: BoxDecoration(
                    border: Border.all(
                  color: Colors.purple,
                  width: 2,
                )),
                padding: EdgeInsets.all(10),
                child: Text(
                  '\$${tx.amount.toString()}',
                  style: TextStyle(
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
                  tx.title,
                  style: TextStyle(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 16),
                )),
                Container(
                    // decoration: BoxDecoration(
                    //   border: Border.all(color: Colors.purple, width: 2)
                    // ),
                    child: Text(
                  DateFormat('yyyy-MM-dd').format(tx.date),
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ))
              ],
            )
          ]));
        }).toList());
  }
}
