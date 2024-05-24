import 'package:flutter/material.dart';

import 'const/constant.dart';
import 'view/screen/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: backgroundColor,
            brightness: Brightness.dark),
        home: HomeScreen());
  }
}
