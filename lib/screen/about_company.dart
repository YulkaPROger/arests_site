import 'package:arests_site/constants_style.dart';
import 'package:arests_site/extentions.dart';
import 'package:arests_site/widget/bottom_privacy_policy_and_copyright.dart';
import 'package:arests_site/widget/icon_griddebtors.dart';
import 'package:arests_site/widget/image_banner.dart';
import 'package:arests_site/widget/logo_and_phone.dart';
import 'package:flutter/material.dart';

import '../string_const.dart';

class AboutCompany extends StatelessWidget {
  const AboutCompany({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const LogoAndPhone(),
            const ImageBanner(
              image: 'assets/images/empty-office.jpg',
              path: ' ' + aboutCompany,
              header: aboutCompany,
              text: aboutCompanyTextBanner,
            ),
            const SizedBox(height: 20,),
            Center(
              child: Container(
                padding: const EdgeInsets.all(12.0),
                child: const Text(nameCompany, style: bigText,),
              ).withConstrained(),
            ),
            Center(
              child: Container(
                padding: const EdgeInsets.all(12.0),
                child: const Text(aboutCompanyLargeText, style: mediumBigText,),
              ).withConstrained(),
            ),
            const Center(child: BottomCopyrightAndPrivacyPolicy()),
          ],
        ),
      ),
    );
  }
}
