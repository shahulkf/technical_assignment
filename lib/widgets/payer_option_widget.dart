import 'package:flutter/material.dart';
import 'package:technical_assignment/model/people/people_model.dart';

class PayerOptionWidget extends StatelessWidget {
  const PayerOptionWidget({
    super.key,
    required this.list,
  });

  final PeopleModel list;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 32,
          backgroundImage: NetworkImage(list.image),
        ),
        Text(
          list.name,
          style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
        )
      ],
    );
  }
}