import 'package:arests_site/screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kScaffoldColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: kPrimaryColor)
        ),
        textTheme: TextTheme(
          bodyText1: TextStyle(color: kDarkTextColor),
          bodyText2: TextStyle(color: kPrimaryTextColor),
          headline5: TextStyle(color: kPrimaryTextColor),
        ),
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
    );
  }
}


