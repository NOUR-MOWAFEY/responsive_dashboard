import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/transactions_list_view.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      children: [
        Row(
          children: [
            Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20(context),
            ),
            const Spacer(),
            Text(
              'See all',
              style: AppStyles.styleMedium16(
                context,
              ).copyWith(color: Color(0xff4EB7F2)),
            ),
          ],
        ),

        const SizedBox(height: 20),

        Text(
          '13 April 2022',
          style: AppStyles.styleMedium16(
            context,
          ).copyWith(color: Color(0xffAAAAAA)),
        ),

        const SizedBox(height: 16),

        const TransactionsListView(),
      ],
    );
  }
}
