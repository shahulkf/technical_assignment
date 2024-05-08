import 'package:flutter/material.dart';
import 'package:technical_assignment/constants/colors/colors.dart';
import 'package:technical_assignment/model/bussiness/business_model.dart';

class BussinessTileWidget extends StatelessWidget {
  const BussinessTileWidget({
    super.key,
    required this.bussinessList,
  });

  final BussinessModel bussinessList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: ConstColors.whiteColor,
          radius: 30,
          backgroundImage: NetworkImage(bussinessList.image),
        ),
        Text(bussinessList.name)
      ],
    );
  }
}