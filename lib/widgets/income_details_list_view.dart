import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_details_item_model.dart';
import 'package:responsive_dashboard/widgets/income_details_item.dart';

class IncomeDetailsListView extends StatelessWidget {
  const IncomeDetailsListView({super.key});

  static const incomeDetailsItems = [
    IncomeDetailsItemModel(
      color: Color(0xff208CC8),
      title: 'Design service',
      value: '40%',
    ),
    IncomeDetailsItemModel(
      color: Color(0xff4EB7F2),
      title: 'Design product',
      value: '25%',
    ),
    IncomeDetailsItemModel(
      color: Color(0xff064061),
      title: 'Product royalti',
      value: '20%',
    ),
    IncomeDetailsItemModel(
      color: Color(0xffE2DECD),
      title: 'Other',
      value: '22%',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    log(MediaQuery.sizeOf(context).width.toString());
    return Column(
      children: incomeDetailsItems
          .map((e) => IncomeDetailsItem(incomeDetailsItemModel: e))
          .toList(),
    );
  }
}
