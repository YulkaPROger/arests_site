import 'package:arests_site/constants.dart';
import 'package:arests_site/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../string_const.dart';
import 'animated_icon.dart';

class IconGrig extends StatelessWidget {
  const IconGrig({
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
            AnimatedItemGrid(
              nameOfPart: audit,
              picture: 'assets/images/audit.jpeg',
              callback: (){},
            ),
            AnimatedItemGrid(
              nameOfPart: debtCollection,
              picture: 'assets/images/debt_collection.jpeg',
              callback: (){},
            ),
            AnimatedItemGrid(
              nameOfPart: executionCourtDecision,
              picture: 'assets/images/execution_court_decision.jpeg',
              callback: (){},
            ),
            AnimatedItemGrid(
              nameOfPart: ourWork,
              picture: 'assets/images/our_work.jpeg',
              callback: (){},
            ),
            AnimatedItemGrid(
              nameOfPart: howOurWorking,
              picture: 'assets/images/how_our_working.jpeg',
              callback: (){},
            ),
            AnimatedItemGrid(
              nameOfPart: personalArea,
              picture: 'assets/images/personal_area.jpg',
              callback: (){},
            ),
            AnimatedItemGrid(
              nameOfPart: becomeAParther,
              picture: 'assets/images/become_a_parther.jpg',
              callback: (){},
            ),

          ],
        ),
      ).withConstrained(),
    );
  }
}

