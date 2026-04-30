import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomePieChart extends StatefulWidget {
  const DetailedIncomePieChart({super.key});

  @override
  State<DetailedIncomePieChart> createState() => _CustomPieChartState();
}

class _CustomPieChartState extends State<DetailedIncomePieChart> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(_getChartData()));
  }

  PieChartData _getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (_, pieTouchResponse) {
          setState(
            () => currentIndex =
                pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1,
          );
        },
      ),
      sectionsSpace: 0,
      sections: _getChartSections,
    );
  }

  List<PieChartSectionData> get _getChartSections {
    return [
      PieChartSectionData(
        color: const Color(0xff208CC8),
        value: 40,
        title: currentIndex == 0 ? 'Design service' : null,
        titlePositionPercentageOffset: currentIndex == 0 ? 1.5 : null,
        titleStyle: AppStyles.styleMedium16(
          context,
        ).copyWith(color: currentIndex == 0 ? null : Colors.white),
        radius: currentIndex == 0 ? 60 : 50,
      ),
      PieChartSectionData(
        color: const Color(0xff4EB7F2),
        value: 25,
        title: currentIndex == 1 ? 'Design product' : null,
        titlePositionPercentageOffset: currentIndex == 1 ? 2.2 : null,
        titleStyle: AppStyles.styleMedium16(
          context,
        ).copyWith(color: currentIndex == 1 ? null : Colors.white),
        radius: currentIndex == 1 ? 60 : 50,
      ),
      PieChartSectionData(
        color: const Color(0xff064061),
        value: 20,
        title: currentIndex == 2 ? 'Product royalti' : null,
        titlePositionPercentageOffset: currentIndex == 2 ? 1.4 : null,

        titleStyle: AppStyles.styleMedium16(
          context,
        ).copyWith(color: currentIndex == 2 ? null : Colors.white),
        radius: currentIndex == 2 ? 60 : 50,
      ),
      PieChartSectionData(
        color: const Color(0xffE2DECD),
        value: 22,
        title: currentIndex == 3 ? 'Other' : null,
        titlePositionPercentageOffset: currentIndex == 3 ? 1.5 : null,
        titleStyle: AppStyles.styleMedium16(
          context,
        ).copyWith(color: currentIndex == 3 ? null : Colors.white),
        radius: currentIndex == 3 ? 60 : 50,
      ),
    ];
  }
}
