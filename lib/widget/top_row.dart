import 'package:arests_site/constants.dart';
import 'package:arests_site/widget/main_menu_item.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';

import '../beam_locations.dart';

class CustomAppBar extends AppBar{
  CustomAppBar({Key? key, required this.beamerKey,}):super(
    key: key,
    title: TopRow(beamerKey: beamerKey),
    backgroundColor: kPrimaryColor
  );
  final GlobalKey<BeamerState> beamerKey;
}


class TopRow extends StatefulWidget {
  const TopRow({
    Key? key, required this.beamerKey,
  }) : super(key: key);
  final GlobalKey<BeamerState> beamerKey;

  @override
  State<TopRow> createState() => _TopRowState();
}

class _TopRowState extends State<TopRow> {
  late BeamerDelegate _beamerDelegate;

  void _setStateListener() => setState(() {});

  @override
  void initState() {
    super.initState();
    _beamerDelegate = widget.beamerKey.currentState!.routerDelegate;
    _beamerDelegate.addListener(_setStateListener);
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      width: double.infinity,
      height: 60,
      color: kPrimaryColor,
      child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxWidth: kMaxWidth
          ),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: kDefaultPadding/2),
            constraints: const BoxConstraints(maxWidth: kMaxWidth),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: (){
                    _beamerDelegate.beamToNamed('/home',);
                  },
                  child: const Icon(
                    Icons.menu,
                    size: 36,
                    color: Colors.white,
                  ),
                ),
                MainMenuItem(
                  text: 'Партнерам',
                  isActive: false,
                  press: () {
                    _beamerDelegate.beamToNamed('/partners',);
                  },
                ),
                MainMenuItem(text: 'Должникам',
                  isActive: false,
                  press: () {
                    _beamerDelegate.beamToNamed('/debtors',);
                  },),
                MainMenuItem(text: 'О компании',
                  isActive: false,
                  press: () {

                    _beamerDelegate.beamToNamed('/about_company',);

                  },),
                MainMenuItem(text: 'Контакты',
                  isActive: false,
                  press: () {
                    _beamerDelegate.beamToNamed('/contacts',);
                  },),
                const Spacer(),
                MainMenuItem(text: 'Свяжитесь с нами',
                  isActive: false,
                  press: () {},),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _beamerDelegate.removeListener(_setStateListener);
    super.dispose();
  }
}