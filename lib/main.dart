// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

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
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                          )
                        ),
                        padding: EdgeInsets.all(10),
                      child: Text(tx.amount.toString(), style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.purple,
                        ),)),
                    Column(children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 2)
                        ),
                        child: Text(
                          tx.title, 
                          style: TextStyle(
                            color: Colors.purple,
                          ),
                        )
                      ),
                      Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 2)
                        ),
                        child: Text(
                          tx.date.toString(),
                          style: TextStyle(
                            color: Colors.purple),
                        )
                      )
                    ],)
                  ])
              );}
            ).toList()
          ),
        ]),
    );
  }
}
