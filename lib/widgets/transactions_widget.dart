import 'package:flutter/material.dart';
import 'package:technical_assignment/model/transaction/transactions.dart';

class TransactionHistoryWidget extends StatelessWidget {
  const TransactionHistoryWidget({
    super.key,
    required this.transaction,
  });

  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          radius: 30,
          child: Text(transaction.leading),
        ),
        title: Text(transaction.title),
        subtitle: Text(transaction.subtitle),
        trailing: Text(
          transaction.trialing,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
