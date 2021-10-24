import 'package:arests_site/constants.dart';
import 'package:arests_site/widget/main_menu_item.dart';
import 'package:flutter/material.dart';

class TopRow extends StatelessWidget {
  const TopRow({
    Key? key,
  }) : super(key: key);

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
                const Icon(
                  Icons.menu,
                  size: 36,
                  color: Colors.white,
                ),
                MainMenuItem(
                  text: 'Партнерам',
                  isActive: false,
                  press: () {},
                ),
                MainMenuItem(text: 'Должникам',
                  isActive: false,
                  press: () {},),
                MainMenuItem(text: 'О компании',
                  isActive: false,
                  press: () {},),
                MainMenuItem(text: 'Контакты',
                  isActive: false,
                  press: () {},),
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
}