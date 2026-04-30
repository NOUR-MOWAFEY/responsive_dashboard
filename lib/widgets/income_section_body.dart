import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/detailed_income_pie_chart.dart';
import 'package:responsive_dashboard/widgets/income_details_list_view.dart';
import 'package:responsive_dashboard/widgets/income_pie_chart.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    return width >= SizeConfig.desktop && width <= 1795
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: DetailedIncomePieChart(),
            ),
          )
        : const Row(
            children: [
              Expanded(child: IncomePieChart()),
              SizedBox(width: 40),
              Expanded(flex: 2, child: IncomeDetailsListView()),
            ],
          );
  }
}
