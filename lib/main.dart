import 'package:arests_site/widget/top_row.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import 'beam_locations.dart';
import 'constants.dart';

void main() {
  Beamer.setPathUrlStrategy();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final routerDelegate = BeamerDelegate(
    initialPath: '/home',
    locationBuilder: SimpleLocationBuilder(
      routes: {
        '*': (context, state) {
          final beamerKey = GlobalKey<BeamerState>();
          return Scaffold(
            appBar: CustomAppBar(beamerKey: beamerKey),
            body: Beamer(
              key: beamerKey,
              routerDelegate: BeamerDelegate(
                locationBuilder: BeamerLocationBuilder(
                  beamLocations: [
                    HomeLocation(state),
                    PartnersLocation(state),
                    DebtorsLocation(state),
                    AboutCompanyLocation(state),
                    ContactsLocation(state)
                  ],
                ),
              ),
            ),
          );
        }
      },
    ),
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
        checkboxTheme: Theme.of(context).checkboxTheme.copyWith(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),

              ),
            ),
        primarySwatch: Colors.green,
          unselectedWidgetColor: Colors.black12
      ),
    );
  }
}
