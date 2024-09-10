import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          radius: activeIndex == 0 ? 50 : 40,
          showTitle: false,
          color: const Color(0xff208CC8),
          value: 40,
        ),
        PieChartSectionData(
          radius: activeIndex == 1 ? 50 : 40,
          showTitle: false,
          color: const Color(0xff4EB7F2),
          value: 25,
        ),
        PieChartSectionData(
          radius: activeIndex == 2 ? 50 : 40,
          showTitle: false,
          color: const Color(0xff064061),
          value: 20,
        ),
        PieChartSectionData(
          radius: activeIndex == 3 ? 50 : 40,
          showTitle: false,
          color: const Color(0xffE2DECD),
          value: 22,
        ),
      ],
    );
  }
}
