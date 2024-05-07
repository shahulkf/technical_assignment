import 'package:flutter/material.dart';
import 'package:technical_assignment/constants/appstrings/appstrings.dart';

class TransactionModel{
  final String title;
  final String subtitle;
  final String trialing;
  final String leading;

  TransactionModel({ required this.leading, required this.title, required this.subtitle, required this.trialing});
}

final transactionHistory = [ 
  TransactionModel(leading: 'S', title: 'Shahul', subtitle: '6 May 2024 at 11:30 am', trialing: '${AppStrings.rupee}1300'),
  TransactionModel(leading: 'I', title: 'Ilyas', subtitle: '6 May 2024 at 1:30 am', trialing: '${AppStrings.rupee}1900'),
  TransactionModel(leading: 'R', title: 'Rahul', subtitle: '6 May 2024 at 12:30 am', trialing: '${AppStrings.rupee}1500'),
  TransactionModel(leading: 'S', title: 'Shahul', subtitle: '6 May 2024 at 10:30 am', trialing: '${AppStrings.rupee}1500'),
  TransactionModel(leading: 'S', title: 'Shahul', subtitle: '6 May 2024 at 5:30 am', trialing: '${AppStrings.rupee}500'),
  TransactionModel(leading: 'S', title: 'Shahul', subtitle: '6 May 2024 at 10:30 am', trialing: '${AppStrings.rupee}1000'),
  TransactionModel(leading: 'S', title: 'Shahul', subtitle: '6 May 2024 at 11:30 am', trialing: '${AppStrings.rupee}1300'),
  TransactionModel(leading: 'I', title: 'Ilyas', subtitle: '6 May 2024 at 1:30 am', trialing: '${AppStrings.rupee}1900'),
  TransactionModel(leading: 'R', title: 'Rahul', subtitle: '6 May 2024 at 12:30 am', trialing: '${AppStrings.rupee}1500'),
  TransactionModel(leading: 'S', title: 'Shahul', subtitle: '6 May 2024 at 10:30 am', trialing: '${AppStrings.rupee}1500'),
  TransactionModel(leading: 'S', title: 'Shahul', subtitle: '6 May 2024 at 5:30 am', trialing: '${AppStrings.rupee}500'),
  TransactionModel(leading: 'S', title: 'Shahul', subtitle: '6 May 2024 at 10:30 am', trialing: '${AppStrings.rupee}1000'),
  TransactionModel(leading: 'S', title: 'Shahul', subtitle: '6 May 2024 at 10:30 am', trialing: '${AppStrings.rupee}1100'),
  TransactionModel(leading: 'S', title: 'Shahul', subtitle: '6 May 2024 at 10:30 am', trialing: '${AppStrings.rupee}1900'),
  TransactionModel(leading: 'S', title: 'Shahul', subtitle: '6 May 2024 at 10:30 am', trialing: '${AppStrings.rupee}1200'),
];