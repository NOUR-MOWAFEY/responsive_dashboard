import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_drawer.dart';
import 'package:responsive_dashboard/widgets/expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widgets/income_section.dart';
import 'package:responsive_dashboard/widgets/my_cards_and_transactions_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(width: 32),
        Expanded(flex: 2, child: ExpensesAndQuickInvoiceSection()),
        SizedBox(width: 24),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                MyCardsAndTransactionsSection(),
                SizedBox(height: 24),
                IncomeSection(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
