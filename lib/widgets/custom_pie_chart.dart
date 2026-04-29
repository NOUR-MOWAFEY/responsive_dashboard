import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomPieChart extends StatefulWidget {
  const CustomPieChart({super.key});

  @override
  State<CustomPieChart> createState() => _CustomPieChartState();
}

class _CustomPieChartState extends State<CustomPieChart> {
  int currentIndex = -1;

  @override
  Widget build(BuildContext context) {
    return PieChart(_getChartData());
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
        showTitle: false,
        radius: currentIndex == 0 ? 40 : 35,
      ),
      PieChartSectionData(
        color: const Color(0xff4EB7F2),
        value: 25,
        showTitle: false,
        radius: currentIndex == 1 ? 40 : 35,
      ),
      PieChartSectionData(
        color: const Color(0xff064061),
        value: 20,
        showTitle: false,
        radius: currentIndex == 2 ? 40 : 35,
      ),
      PieChartSectionData(
        color: const Color(0xffE2DECD),
        value: 22,
        showTitle: false,
        radius: currentIndex == 3 ? 40 : 35,
      ),
    ];
  }
}
