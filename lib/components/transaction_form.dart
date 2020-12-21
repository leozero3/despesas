
import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  @override
  _TransactionFormState createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: 'Titulo',
              ),
            ),
            TextField(
              controller: valueController,
              decoration: InputDecoration(
                labelText: 'Valor(R\$)',
              ),
            ),
            FlatButton(
              onPressed: () {
                print(titleController.text);
                print(valueController.text);
              },
              child: Text('Nova Transação'),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
