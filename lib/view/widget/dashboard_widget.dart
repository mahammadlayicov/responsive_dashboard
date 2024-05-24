import 'package:flutter/material.dart';
import 'package:responsive_ui/view/widget/bar_graph_card_widget.dart';

import 'activity_details_card_widget.dart';
import 'header_widget.dart';
import 'line_chart_card_widget.dart';

class DashBoardWidget extends StatelessWidget {
  const DashBoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 18,
      ),
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 18,
          ),
          HeaderWidget(),
          SizedBox(
            height: 18,
          ),
          ActivityDetailsCardWidget(),
          SizedBox(
            height: 18,
          ),
          LineChartCardWidget(),
          SizedBox(
            height: 18,
          ),
          BarGraphCardWidget()
        ],
      ),
    );
  }
}
