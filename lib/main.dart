import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import 'beam_locations.dart';
import 'constants.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final routerDelegate = BeamerDelegate(
    locationBuilder: (state) {
      if (state.uri.pathSegments.contains('books')) {
        return HomeLocation(state);
      }
      return HomeLocation(state);
    },
  );


  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: routerDelegate,
      routeInformationParser: BeamerParser(),
      backButtonDispatcher:
      BeamerBackButtonDispatcher(delegate: routerDelegate),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kScaffoldColor,
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: TextButton.styleFrom(backgroundColor: kPrimaryColor)),
        textTheme: const TextTheme(
          bodyText1: TextStyle(color: kDarkTextColor),
          bodyText2: TextStyle(color: kPrimaryTextColor),
          headline5: TextStyle(color: kPrimaryTextColor),
        ),
        primarySwatch: Colors.blue,
      ),

    );
  }
}
