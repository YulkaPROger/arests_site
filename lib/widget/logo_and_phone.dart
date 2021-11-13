import 'package:arests_site/constants.dart';
import 'package:arests_site/string_const.dart';
import 'package:flutter/material.dart';

class LogoAndPhone extends StatelessWidget {
  const LogoAndPhone({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: ConstrainedBox(
          constraints: const BoxConstraints(maxWidth: kMaxWidth),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'assets/images/logo_time.png',
                  height: 100,
                ),
              ),
              // const Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: Text(
              //     nameOfCompany,
              //     style: bigText),
              //
              // ),
              const Spacer(),
              RichText(
                textAlign: TextAlign.end,
                text: const TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Телефон для связи\n',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: phoneCompany,
                        style: TextStyle(fontWeight: FontWeight.normal,)),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}