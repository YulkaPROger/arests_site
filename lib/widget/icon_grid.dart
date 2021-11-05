import 'package:arests_site/constants.dart';
import 'package:arests_site/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

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
              nameOfPart: 'Название раздела',
              iconData: Icons.ten_k,
              callback: (){},
            ),
            AnimatedItemGrid(
              nameOfPart: 'Название раздела',
              iconData: Icons.fingerprint,
              callback: (){},
            ),
            AnimatedItemGrid(
              nameOfPart: 'Название раздела',
              iconData: Icons.trending_up,
              callback: (){},
            ),
            AnimatedItemGrid(
              nameOfPart: 'Название раздела',
              iconData: Icons.task_alt,
              callback: (){},
            ),
            AnimatedItemGrid(
              nameOfPart: 'Название раздела',
              iconData: Icons.savings,
              callback: (){},
            ),
            AnimatedItemGrid(
              nameOfPart: 'Название раздела',
              iconData: Icons.flutter_dash,
              callback: (){},
            ),
            AnimatedItemGrid(
              nameOfPart: 'Название раздела',
              iconData: Icons.g_translate,
              callback: (){},
            ),
            AnimatedItemGrid(
              nameOfPart: 'Название раздела',
              iconData: Icons.polymer,
              callback: (){},
            ),
          ],
        ),
      ).withConstrained(),
    );
  }
}

