import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
              // onChanged: (value) {
              //     titleInput = value;
              //   },
              controller: titleController,
              decoration: InputDecoration(labelText: "Title")),
          TextField(
              // onChanged: (value) {
              //     amountInput = value;
              //   },
              controller: amountController,
              decoration: InputDecoration(labelText: "Amount")),
          TextButton(
            onPressed: () {
              print(titleController.text);
              print(amountController.text);
            },
            child: Text(
              "Add Transaction",
              style: TextStyle(color: Colors.purple),
            ),
          ),
        ],
      ),
    ));
  }
}
