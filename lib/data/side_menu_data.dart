import 'package:flutter/material.dart';
import 'package:responsive_ui/model/menu_model.dart';

class SideMenuData {
  final menu =  <MenuModel>[
    MenuModel(icon: Icons.home, title: "Dashboard"),
    MenuModel(icon: Icons.person, title: "Profile"),
    MenuModel(icon: Icons.run_circle, title: "Exercise"),
    MenuModel(icon: Icons.settings, title: "Setting"),
    MenuModel(icon: Icons.history, title: "History"),
    MenuModel(icon: Icons.logout, title: "SingOut"),
  ];
}
