// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import './transction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatelessWidget {

  final List<Transaction> transactions = [
    Transaction(id: 'a1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(id: 'a1', title: 'Supplies', amount: 39.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text('Flutter App'),
       ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              child: Text('Chart')
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Text(tx.title,)
              );}
            ).toList()
          ),
        ]),
      );
  }
}
