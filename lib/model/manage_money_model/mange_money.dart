import 'package:flutter/material.dart';

class ManageMoneyModel{
  final IconData leadingIcon;
  final String title;
  final IconData trailingIcon;

  ManageMoneyModel( {required this.leadingIcon, required this.title, required this.trailingIcon});

}
final moneyList = [ 
  ManageMoneyModel(leadingIcon: Icons.speed, title: 'Check you CIBIL score', trailingIcon: Icons.chevron_right_outlined,),
  ManageMoneyModel(leadingIcon: Icons.history, title: 'See transaction history', trailingIcon: Icons.chevron_right_outlined),
  ManageMoneyModel(leadingIcon: Icons.account_balance, title: 'Check bank balance', trailingIcon: Icons.chevron_right_outlined),
];