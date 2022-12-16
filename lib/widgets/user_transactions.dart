import "package:flutter/material.dart";

import './transaction_list.dart';
import './new_transactions.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({super.key});

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {

  final List<Transaction> _userTransactions = [
    Transaction(
        id: 'a1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 'a1', title: 'Supplies', amount: 39.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(),
        TransactionList(),
      ],
    );
  }
}
