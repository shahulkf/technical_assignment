import 'package:flutter/material.dart';
import 'package:technical_assignment/constants/colors/colors.dart';
import 'package:technical_assignment/constants/size/sizes.dart';
import 'package:technical_assignment/model/manage_money_model/mange_money.dart';
import 'package:technical_assignment/model/people/people_model.dart';
import 'package:technical_assignment/model/transaction_model/transaction_model.dart';
import 'package:technical_assignment/utils/responsive/responsive.dart';
import 'package:technical_assignment/view/screen_three.dart';
import 'package:technical_assignment/view/screen_two.dart';
import 'package:technical_assignment/widgets/payer_option_widget.dart';
import 'package:technical_assignment/widgets/title_widget.dart';
import 'package:technical_assignment/widgets/transactions_options_widget.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  final String _image =
      'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fwww.china-admissions.com%2Fwp-content%2Fuploads%2F2021%2F06%2FDivi-Community-Update-May-2020-scaled-1.jpeg&f=1&nofb=1&ipt=93a9bda0a9120995caed35727ab625c7b45a472fb0bbff24f2b05cd92d751f20&ipo=images';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              height10,
              _buildTransactionOptions(),
              height10,
              _buildUPIDetails(),
              height10,
              const TitleWidget(title: 'People'),
              height10,
              _buildPeopleGrid(),
              height10,
              _buildBusinessesSection(),
              height10,
              const TitleWidget(title: 'Manage your money'),
              height10,
              _buildMoneyList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(_image),
        ),
      ),
      height: Responsive.height * 0.27,
      width: Responsive.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildSearchBar(),
              CircleAvatar(
                backgroundImage: NetworkImage(peopleList.first.image),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar() {
    return Container(
      height: Responsive.height * 0.056,
      width: Responsive.width * 0.80,
      decoration: BoxDecoration(
        color: ConstColors.whiteColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            const Icon(
              Icons.search,
              color: ConstColors.greyColor,
            ),
            SizedBox(width: Responsive.width * 0.08),
            const Text(
              'Pay by name or phone number',
              style: TextStyle(color: ConstColors.greyColor),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTransactionOptions() {
    return Padding(
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
    );
  }

  Widget _buildUPIDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: Responsive.height * 0.040,
          width: Responsive.width * 0.40,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: ConstColors.greyColor),
            borderRadius: BorderRadius.circular(19),
          ),
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
            ),
          ),
        ),
        Container(
          height: Responsive.height * 0.042,
          width: Responsive.width * 0.49,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(19),
          ),
          child: const Center(
            child: Text(
              'UPI ID :  john@icici',
              style: TextStyle(fontSize: 12),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildPeopleGrid() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: peopleList.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemBuilder: (context, index) {
        final list = peopleList[index];
        return PayerOptionWidget(list: list);
      },
    );
  }

  Widget _buildBusinessesSection() {
    return Row(
      children: [
        const TitleWidget(title: 'Bussinesses'),
        SizedBox(width: Responsive.width * 0.29),
        Container(
          height: Responsive.height * 0.049,
          width: Responsive.width * 0.27,
          decoration: BoxDecoration(
            color: Colors.blue[100],
            borderRadius: BorderRadius.circular(19),
          ),
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
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildMoneyList() {
    return ListView.builder(
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
                ),
              );
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
    );
  }
}
