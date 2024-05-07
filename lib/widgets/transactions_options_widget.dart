import 'package:flutter/material.dart';
import 'package:technical_assignment/model/transaction_model/transaction_model.dart';

class TrasactionOptionsWidget extends StatelessWidget {
  const TrasactionOptionsWidget({
    super.key,
    required this.item,
  });

  final TransactionModel item;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          item.icon,
          color: Colors.blue[900],
          size: 26,
        ),
        Text(
          item.title,
          maxLines: 2,
          style: const TextStyle(fontWeight: FontWeight.w500),
        )
      ],
    );
  }
}