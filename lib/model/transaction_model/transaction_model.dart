import 'package:flutter/material.dart';

class TransactionModel {
  final IconData icon;
  final String title;

  TransactionModel({required this.icon, required this.title});
}

final transactionItems = [
  TransactionModel(
    icon: Icons.qr_code,
    title: '  QR \n COde',
  ),
  TransactionModel(
    icon: Icons.phone_in_talk_rounded,
    title: '  Pay\n contacts',
  ),
  TransactionModel(
    icon: Icons.phone_android_rounded,
    title: '  Pay phone \n  number',
  ),
  TransactionModel(
    icon: Icons.account_balance,
    title: '  Bank\n transfer',
  ),
  TransactionModel(
    icon: Icons.alternate_email_rounded,
    title: '  Pay UPI ID\n or number',
  ),
  TransactionModel(
    icon: Icons.person,
    title: '   Self\n transfer',
  ),
  TransactionModel(
    icon: Icons.library_books_outlined,
    title: '  Pay\n bills',
  ),
  TransactionModel(
    icon: Icons.charging_station,
    title: '  Mobile\n recharge',
  ),
];
