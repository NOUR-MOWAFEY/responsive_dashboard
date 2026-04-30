import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemsList extends StatefulWidget {
  const AllExpensesItemsList({super.key});

  @override
  State<AllExpensesItemsList> createState() => _AllExpensesItemsListState();
}

class _AllExpensesItemsListState extends State<AllExpensesItemsList> {
  final expenses = const [
    AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      data: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      data: 'April 2022',
      price: r'$20,129',
    ),
    AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      data: 'April 2022',
      price: r'$20,129',
    ),
  ];

  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => _update(0),
            child: AllExpensesItem(
              allExpensesItemModel: expenses[0],
              isActive: 0 == activeIndex,
            ),
          ),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: GestureDetector(
            onTap: () => _update(1),
            child: AllExpensesItem(
              allExpensesItemModel: expenses[1],
              isActive: 1 == activeIndex,
            ),
          ),
        ),

        const SizedBox(width: 12),

        Expanded(
          child: GestureDetector(
            onTap: () => _update(2),
            child: AllExpensesItem(
              allExpensesItemModel: expenses[2],
              isActive: 2 == activeIndex,
            ),
          ),
        ),
      ],
    );
  }

  void _update(int index) {
    if (index != activeIndex) {
      setState(() {
        activeIndex = index;
        log('done');
      });
    }
  }
}
