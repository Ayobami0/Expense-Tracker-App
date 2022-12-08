// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

import './transction.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 'a1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 'a1', title: 'Supplies', amount: 39.99, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(children: <Widget>[
        SizedBox(
          width: double.infinity,
          child: Card(child: Text('Chart')),
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: transactions.map((tx) {
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
                Card(
                    child: Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      TextField(decoration: InputDecoration(labelText: "Title")),
                      TextField(decoration: InputDecoration(labelText: "Amount")),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          "Add Transaction",
                          style: TextStyle(color: Colors.purple),  
                        ),
                      ),
                    ],
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
            }).toList()),
      ]),
    );
  }
}
