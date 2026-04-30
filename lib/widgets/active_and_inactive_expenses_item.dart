import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';

class AllExpensesActiveItem extends StatelessWidget {
  const AllExpensesActiveItem({super.key, required this.allExpensesItemModel});

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color(0xff4EB7F2),
        border: Border.all(color: Color(0xff4EB7F2)),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          AllExpensesItemHeader(
            allExpensesItemModel: allExpensesItemModel,
            isActive: true,
          ),

          const SizedBox(height: 34),

          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.title,
              style: AppStyles.styleSemiBold16(
                context,
              ).copyWith(color: Colors.white),
            ),
          ),

          SizedBox(height: 8),

          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.data,
              style: AppStyles.styleRegular14(
                context,
              ).copyWith(color: Color(0xffFAFAFA)),
            ),
          ),

          SizedBox(height: 16),

          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24(
                context,
              ).copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

class AllExpensesInActiveItem extends StatelessWidget {
  const AllExpensesInActiveItem({
    super.key,

    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xffF1F1F1)),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          AllExpensesItemHeader(
            allExpensesItemModel: allExpensesItemModel,
            isActive: false,
          ),

          const SizedBox(height: 34),

          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.title,
              style: AppStyles.styleSemiBold16(context).copyWith(),
            ),
          ),

          SizedBox(height: 8),

          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.data,
              style: AppStyles.styleRegular14(context),
            ),
          ),

          SizedBox(height: 16),

          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              allExpensesItemModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          ),
        ],
      ),
    );
  }
}
