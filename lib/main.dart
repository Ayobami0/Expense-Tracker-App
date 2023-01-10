// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:expense_tracker_app/widgets/transaction_list.dart';
import 'package:expense_tracker_app/widgets/user_transactions.dart';
import 'package:flutter/material.dart';


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
  void startAddNewTransaction(){

  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense Tracker'),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          SizedBox(
            child: Card(child: Text('Chart')),
          ),
        UserTransactions(),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
