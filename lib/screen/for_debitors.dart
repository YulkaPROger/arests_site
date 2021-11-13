import 'package:arests_site/widget/bottom_privacy_policy_and_copyright.dart';
import 'package:arests_site/widget/icon_griddebtors.dart';
import 'package:arests_site/widget/image_banner.dart';
import 'package:arests_site/widget/logo_and_phone.dart';
import 'package:flutter/material.dart';

import '../string_const.dart';

class ForDebitors extends StatelessWidget {
  const ForDebitors({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            LogoAndPhone(),
            ImageBanner(
              image: 'assets/images/debtors_background.png',
              path: ' ' + forDebtors,
              header: forDebtors,
              text: debtorsTextBanner,
            ),
            IconDebtors(),
            Center(child: BottomCopyrightAndPrivacyPolicy()),
          ],
        ),
      ),
    );
  }
}
