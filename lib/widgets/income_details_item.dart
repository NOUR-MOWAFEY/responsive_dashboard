import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/income_details_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeDetailsItemModel});
  final IncomeDetailsItemModel incomeDetailsItemModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      minVerticalPadding: 0,
      contentPadding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
      leading: Container(
        height: 12,
        width: 12,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: incomeDetailsItemModel.color,
        ),
      ),
      title: Text(
        incomeDetailsItemModel.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        incomeDetailsItemModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}
