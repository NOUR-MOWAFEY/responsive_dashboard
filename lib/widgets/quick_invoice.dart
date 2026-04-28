import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/latest_transaction_list_view.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_form.dart';
import 'package:responsive_dashboard/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      padding: 24,
      child: Column(
        crossAxisAlignment: .start,
        children: [
          const QuickInvoiceHeader(),
          const SizedBox(height: 24),
          Text('Latest Transaction', style: AppStyles.styleMedium16(context)),
          const SizedBox(height: 12),
          const LatestTransactionListView(),

          Divider(height: 48, color: Color(0xffF1F1F1)),

          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
