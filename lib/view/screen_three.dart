import 'package:flutter/material.dart';
import 'package:technical_assignment/model/transaction/transactions.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Transactions'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: transactionHistory.length,
                itemBuilder: (context, index) {
                  final transaction = transactionHistory[index];
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
                },
              )
            ],
          ),
        ));
  }
}
