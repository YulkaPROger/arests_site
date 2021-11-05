import 'package:arests_site/widget/bottom_privacy_policy_and_copyright.dart';
import 'package:arests_site/widget/form_sending.dart';
import 'package:arests_site/widget/icon_grid.dart';
import 'package:arests_site/widget/image_banner.dart';
import 'package:arests_site/widget/logo_and_phone.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ForPartners extends StatelessWidget {
  const ForPartners({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: const [
            LogoAndPhone(),
            ImageBanner(),
            IconGrig(),
            FormSending(),
            Center(child: BottomCopyrightAndPrivacyPolicy()),
          ],
        ),
      ),
    );
  }
}

