import 'package:arests_site/constants.dart';
import 'package:arests_site/widget/main_menu_item.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 400,
            color: kPrimaryColor,
            child: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(kDefaultPadding),
                    constraints: BoxConstraints(maxWidth: kMaxWidth),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.view_headline,
                          size: 60,
                          color: Colors.white,
                        ),
                        Spacer(),
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
                        Spacer(),
                        MainMenuItem(text: 'Свяжитесь с нами',
                          isActive: false,
                          press: () {},),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}


