import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);

  void submitData(){
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount <= 0){
      return;
    }

    addTx(
        titleController.text,
        double.parse(amountController.text));
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: "Title"),
              onSubmitted: (_) => submitData(),
            ),
          TextField(
              keyboardType: TextInputType.number,
              controller: amountController,
              decoration: InputDecoration(labelText: "Amount"),
              onSubmitted: (_) => submitData(),
            ),
          TextButton(
            onPressed: submitData,
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
