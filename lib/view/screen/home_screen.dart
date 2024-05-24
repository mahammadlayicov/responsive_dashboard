import 'package:flutter/material.dart';
import 'package:responsive_ui/const/constant.dart';
import 'package:responsive_ui/util/responsive.dart';
import 'package:responsive_ui/view/widget/dashboard_widget.dart';
import 'package:responsive_ui/view/widget/side_menu_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);

    return Scaffold(
      drawer: !isDesktop
          ? Container(
              color: cardBackgroundColor,
              width: 250,
              child: SideMenuWidget(),
            )
          : null,
      body: SafeArea(
        child: Row(
          children: [
            if (isDesktop)
              Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideMenuWidget(),
                ),
              ),
            Expanded(
              flex: 7,
              child: DashBoardWidget(),
            ),
          ],
        ),
      ),
    );
  }
}
