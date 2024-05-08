import 'package:flutter/material.dart';
import 'package:technical_assignment/model/transaction/transactions.dart';
import 'package:technical_assignment/view/screen_two.dart';
import 'package:technical_assignment/widgets/transactions_widget.dart';

class ScreenThree extends StatelessWidget {
  const ScreenThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const ScreenTwo(),
            ));
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScreenTwo(),
                    ));
              },
              icon: const Icon(Icons.arrow_back)),
          title: const Text('Transactions'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              _buildTransactionList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTransactionList() {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: transactionHistory.length,
      itemBuilder: (context, index) {
        final transaction = transactionHistory[index];
        return TransactionHistoryWidget(transaction: transaction);
      },
    );
  }
}
