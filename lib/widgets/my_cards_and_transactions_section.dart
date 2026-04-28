import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/my_cards_section.dart';
import 'package:responsive_dashboard/widgets/transaction_history_section.dart';

class MyCardsAndTransactionsSection extends StatelessWidget {
  const MyCardsAndTransactionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 40, right: 32),
      child: CustomBackgroundContainer(
        padding: 24,
        child: Column(
          children: [
            MyCardsSection(),

            Divider(height: 40, color: Color(0xffF1F1F1)),

            TransactionHistorySection(),
          ],
        ),
      ),
    );
  }
}
