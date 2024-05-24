import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui/const/constant.dart';
import 'package:responsive_ui/data/side_menu_data.dart';

class SideMenuWidget extends StatefulWidget {
  const SideMenuWidget({super.key});

  @override
  State<SideMenuWidget> createState() => _SideMenuWidgetState();
}

class _SideMenuWidgetState extends State<SideMenuWidget> {
  @override
  void initState() {
    super.initState();
    // Implement some initialization operations here.
  }

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final data = SideMenuData();
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: ListView.builder(
        itemCount: data.menu.length,
        itemBuilder: (context, index) => buildMenuEntry(data, index),
      ),
    );
  }

  Widget buildMenuEntry(SideMenuData sideMenuData, int index) {
    final isSelected = selectedIndex == index;
    return InkWell(
      onTap: () => setState(() {
        selectedIndex = index;
      }),
      child: Container(
        decoration: BoxDecoration(
            color: isSelected ? selectionColor : Colors.transparent,
            borderRadius: BorderRadius.circular(6)),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 13, vertical: 7),
              child: Icon(
                sideMenuData.menu[index].icon,
                color: isSelected ? Colors.black : Colors.grey,
              ),
            ),
            Text(sideMenuData.menu[index].title,
                style: TextStyle(
                    fontSize: 16,
                    color: isSelected ? Colors.black : Colors.grey,
                    fontWeight: FontWeight.normal))
          ],
        ),
      ),
    );
  }
}
