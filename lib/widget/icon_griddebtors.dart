import 'package:arests_site/constants.dart';
import 'package:arests_site/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../string_const.dart';
import 'animated_icon.dart';
import 'animated_icon_debtors.dart';

class IconDebtors extends StatelessWidget {
  const IconDebtors({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 50),
        child: GridView.count(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 5,
          children: <Widget>[
            AnimatedItemDebtors(
              nameOfPart: findOutAboutYourDebts,
              picture: 'assets/images/about_your_debts.png',
              callback: (){},
            ),
            AnimatedItemDebtors(
              nameOfPart: payDebts,
              picture: 'assets/images/pay_debts.png',
              callback: (){},
            ),
            AnimatedItemDebtors(
              nameOfPart: getHelpDocuments,
              picture: 'assets/images/get_help_documents.png',
              callback: (){},
            ),
            AnimatedItemDebtors(
              nameOfPart: findAddressStorage,
              picture: 'assets/images/find_address_storage.png',
              callback: (){},
            ),
            AnimatedItemDebtors(
              nameOfPart: installmentPayment,
              picture: 'assets/images/installment_payment.png',
              callback: (){},
            ),
            AnimatedItemDebtors(
              nameOfPart: howToRemoteArrests,
              picture: 'assets/images/how_to_remote_arrests.png',
              callback: (){},
            ),
            AnimatedItemDebtors(
              nameOfPart: feedback,
              picture: 'assets/images/feedback.png',
              callback: (){},
            ),

          ],
        ),
      ).withConstrained(),
    );
  }
}

