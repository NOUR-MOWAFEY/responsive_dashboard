import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/custom_pie_chart.dart';
import 'package:responsive_dashboard/widgets/income_details_list_view.dart';
import 'package:responsive_dashboard/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        mainAxisAlignment: .start,
        children: [
          IncomeSectionHeader(),
          SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: AspectRatio(aspectRatio: 1, child: CustomPieChart()),
              ),
              SizedBox(width: 40),
              Expanded(child: IncomeDetailsListView()),
            ],
          ),
        ],
      ),
    );
  }
}
