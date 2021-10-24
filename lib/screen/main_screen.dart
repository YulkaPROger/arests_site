import 'package:arests_site/constants.dart';
import 'package:arests_site/widget/main_chapters.dart';
import 'package:arests_site/widget/top_row.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TopRow(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
                constraints: const BoxConstraints(maxWidth: kMaxWidth),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MainChapters(
                      press: (){},
                      text: 'Партнерам',
                      bottomText: 'Технологии будущего для Вашего бизнеса',
                      image: 'assets/images/businessmen-closing-deal-with-handshake.jpg',
                    ),
                    MainChapters(
                      press: (){},
                      text: 'Должникам',
                      bottomText: 'Урегулирование финансовых вопросов',
                      image: 'assets/images/young-woman-checking-her-budget-doing-taxes.jpg',
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


