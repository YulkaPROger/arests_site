import 'package:arests_site/constants.dart';
import 'package:arests_site/constants_style.dart';
import 'package:arests_site/string_const.dart';
import 'package:flutter/material.dart';

class BottomCopyrightAndPrivacyPolicy extends StatelessWidget {
  const BottomCopyrightAndPrivacyPolicy({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [Text(copyright, style: mediumText,), Text(privacyPolicy, style: mediumText,)],
        ),
      ),
    );
  }
}