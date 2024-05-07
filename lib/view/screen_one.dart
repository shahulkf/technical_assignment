import 'package:flutter/material.dart';
import 'package:technical_assignment/constants/colors/colors.dart';
import 'package:technical_assignment/constants/size/sizes.dart';
import 'package:technical_assignment/model/bussiness/business_model.dart';
import 'package:technical_assignment/model/manage_money_model/mange_money.dart';
import 'package:technical_assignment/model/people/people_model.dart';
import 'package:technical_assignment/model/transaction_model/transaction_model.dart';
import 'package:technical_assignment/utils/responsive/responsive.dart';
import 'package:technical_assignment/view/screen_three.dart';
import 'package:technical_assignment/view/screen_two.dart';
import 'package:technical_assignment/widgets/transactions_options_widget.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({super.key});
  final image =
      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.china-admissions.com%2Fwp-content%2Fuploads%2F2021%2F06%2FDivi-Community-Update-May-2020-scaled-1.jpeg&f=1&nofb=1&ipt=93a9bda0a9120995caed35727ab625c7b45a472fb0bbff24f2b05cd92d751f20&ipo=images';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                ),
              ),
              height: Responsive.height * 0.27,
              width: Responsive.width * 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  height10,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: Responsive.height * 0.056,
                        width: Responsive.width * 0.80,
                        decoration: BoxDecoration(
                            color: ConstColors.whiteColor,
                            borderRadius: BorderRadius.circular(25)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              const Icon(
                                Icons.search,
                                color: ConstColors.greyColor,
                              ),
                              SizedBox(
                                width: Responsive.width * 0.08,
                              ),
                              const Text(
                                'Pay by name or phone number',
                                style: TextStyle(color: ConstColors.greyColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CircleAvatar(
                        backgroundImage: NetworkImage(peopleList.first.image),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            height10,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.builder(
                itemCount: transactionItems.length,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                ),
                itemBuilder: (context, index) {
                  final item = transactionItems[index];
                  return TrasactionOptionsWidget(item: item);
                },
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: Responsive.height * 0.040,
                  width: Responsive.width * 0.40,
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: ConstColors.greyColor),
                      borderRadius: BorderRadius.circular(19)),
                  child: const Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('Activate UPI Lite'),
                      Icon(
                        Icons.add_circle_outline_outlined,
                        size: 22,
                        color: Colors.black54,
                      )
                    ],
                  )),
                ),
                Container(
                  height: Responsive.height * 0.042,
                  width: Responsive.width * 0.49,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(19)),
                  child: const Center(
                      child: Text(
                    'UPI ID :  john@icici',
                    style: TextStyle(fontSize: 12),
                  )),
                ),
              ],
            ),
            height10,
            const TitleWidget(
              title: 'People',
            ),
            height10,
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: peopleList.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (context, index) {
                final list = peopleList[index];
                return PayerOptionWidget(list: list);
              },
            ),
            height10,
            Row(
              children: [
                const TitleWidget(title: 'Bussinesses'),
                SizedBox(
                  width: Responsive.width * 0.29,
                ),
                Container(
                  height: Responsive.height * 0.049,
                  width: Responsive.width * 0.27,
                  decoration: BoxDecoration(
                      color: Colors.blue[100],
                      borderRadius: BorderRadius.circular(19)),
                  child: const Center(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.shopping_bag_outlined),
                      Text(
                        'Explore',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  )),
                ),
              ],
            ),
            height10,
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 4,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4),
              itemBuilder: (context, index) {
                final bussinessList = Bussiness[index];

                return BussinessTileWidget(bussinessList: bussinessList);
              },
            ),
            height10,
            const TitleWidget(title: 'Manage your money '),
            height10,
            ListView.builder(
              shrinkWrap: true,
              itemCount: moneyList.length,
              itemBuilder: (context, index) {
                final money = moneyList[index];

                return ListTile(
                  onTap: () {
                    if (index == moneyList.length - 1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScreenTwo(),
                          ));
                    } else if (index == 1) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ScreenThree(),
                          ));
                    }
                  },
                  leading: Icon(
                    money.leadingIcon,
                    color: Colors.blue[800],
                  ),
                  title: Text(money.title),
                  trailing: Icon(money.trailingIcon),
                );
              },
            )
          ],
        ),
      ),
    ));
  }
}

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

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
