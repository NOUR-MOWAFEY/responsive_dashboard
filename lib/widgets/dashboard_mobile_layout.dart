import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_cards_and_transactions_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ExpensesAndQuickInvoiceSection(),
          MyCardsAndTransactionsSection(),
          SizedBox(height: 32),
          IncomeSection(),
          SizedBox(height: 32),
        ],
      ),
    );
  }
}
