import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui/data/health_data.dart';
import 'package:responsive_ui/util/responsive.dart';
import 'package:responsive_ui/view/widget/custom_card_widget.dart';

class ActivityDetailsCardWidget extends StatelessWidget {
  const ActivityDetailsCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final healthData = HealthData();
    return GridView.builder(
        itemCount: healthData.data.length,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: Responsive.isMobile(context) ? 2 : 4,
          crossAxisSpacing: Responsive.isMobile(context) ? 12 : 15,
          mainAxisSpacing: 12.0,
        ),
        itemBuilder: (context, index) => CustomCardWidget(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(height: 30, width: 30, healthData.data[index].icon),
                Padding(
                    padding: EdgeInsets.only(top: 15, bottom: 4),
                    child: Text(
                      healthData.data[index].value,
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                    )),
                Text(
                  healthData.data[index].title,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.normal),
                )
              ],
            )));
  }
}
