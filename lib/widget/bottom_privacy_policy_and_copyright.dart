import 'package:arests_site/constants.dart';
import 'package:arests_site/constants_style.dart';
import 'package:arests_site/string_const.dart';
import 'package:flutter/material.dart';

class BottomCopyrightAndPrivacyPolicy extends StatelessWidget {
  const BottomCopyrightAndPrivacyPolicy({
    Key? key,
  }) : super(key: key);

  void _showSimpleDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(child: Text(privacyPolicy)),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.close),
                )
              ],
            ),
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(12),
                width: MediaQuery.of(context).size.width * 0.75,
                height: MediaQuery.of(context).size.height * 0.75,
                child: const SingleChildScrollView(
                  child: Text(policyForPersonalData),
                ),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text(
                  accept,
                  style: mediumBigText,
                ),
              ),
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: kMaxWidth),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              copyright,
              style: mediumText,
            ),
            TextButton(
              onPressed: () {
                _showSimpleDialog(context);
              },
              child: Text(
                privacyPolicy,
                style: mediumText,
              ),
            )
          ],
        ),
      ),
    );
  }
}
