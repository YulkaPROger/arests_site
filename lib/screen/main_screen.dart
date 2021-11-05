import 'package:arests_site/constants.dart';
import 'package:arests_site/screen/for_partners.dart';
import 'package:arests_site/string_const.dart';
import 'package:arests_site/widget/bottom_privacy_policy_and_copyright.dart';
import 'package:arests_site/widget/logo_and_phone.dart';
import 'package:arests_site/widget/main_chapters.dart';
import 'package:arests_site/widget/top_row.dart';
import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool showBottomSheet = false;
  bool showBanner = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      setState(() {
        showBottomSheet = true;
        showBanner = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        fit: StackFit.expand,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              LogoAndPhone(),
              Expanded(
                flex: 3,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
                  constraints: const BoxConstraints(maxWidth: kMaxWidth),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MainChapters(
                        press: () {
                          context.beamToNamed('/partners');
                        },
                        text: 'Партнерам',
                        bottomText: 'Технологии будущего для Вашего бизнеса',
                        image:
                            'assets/images/businessmen-closing-deal-with-handshake.jpg',
                      ),
                      MainChapters(
                        press: () {},
                        text: 'Должникам',
                        bottomText: 'Урегулирование финансовых вопросов',
                        image:
                            'assets/images/young-woman-checking-her-budget-doing-taxes.jpg',
                      ),
                    ],
                  ),
                ),
              ),
              BottomCopyrightAndPrivacyPolicy(),
            ],
          ),
          AnimatedPositioned(
              bottom: showBottomSheet ? 0 : -200,
              left: 0,
              right: 0,
              duration: Duration(seconds: 1),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Expanded(child: Text(cookies)),
                      IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          setState(() {
                            showBottomSheet = false;
                          });
                        },
                      )
                    ],
                  ),
                ),
              )),
          AnimatedPositioned(
              top: 10,
              right: showBanner ? 10 : -MediaQuery.of(context).size.width * 0.2,
              child: SizedBox(
                height: MediaQuery.of(context).size.width * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                child: Stack(
                  children: [
                    Positioned(
                      top: 12,
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.1 - 12,
                        width: MediaQuery.of(context).size.width * 0.2,
                        padding: const EdgeInsets.all(8),
                        decoration: const BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    'assets/images/modern-tech-background.jpg'))),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Трансграничный поиск активов',
                              style: TextStyle(color: Colors.white),
                            ),
                            const Spacer(),
                            Text(
                              'Поиск активов должника за рубежом из общедоступных источников',
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 8),
                              child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(18.0),
                                    ),
                                    side: BorderSide(
                                        width: 2, color: Colors.white),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      showBanner = false;
                                    });
                                  },
                                  child: Text(
                                    'подробнее',
                                    style: TextStyle(color: Colors.white),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                color: Colors.white,
                                boxShadow: [BoxShadow(color: Colors.black26)]),
                            child: Icon(Icons.close)))
                  ],
                ),
              ),
              duration: Duration(seconds: 3))
        ],
      ),
    );
  }
}


