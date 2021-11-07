import 'package:arests_site/constants_style.dart';
import 'package:arests_site/extentions.dart';
import 'package:arests_site/string_const.dart';
import 'package:arests_site/widget/input.dart';
import 'package:flutter/material.dart';

class FormSending extends StatefulWidget {
  const FormSending({
    Key? key,
  }) : super(key: key);

  @override
  State<FormSending> createState() => _FormSendingState();
}

class _FormSendingState extends State<FormSending> {

  bool isChecked = false;
  bool isCheckedTermsOfThePolicy = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(haveQuestions, style: bigText,),
              SizedBox(
                height: 16,
              ),
              Text(managerQuestions, style: mediumText,),
              Row(
                children: [
                  Expanded(
                      child: Input(
                          text: "Имя",
                          controller: TextEditingController())),
                  Expanded(
                    child: Input(
                        text: "Название организации",
                        controller: TextEditingController()),
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Input(
                          text: "Телефон",
                          controller: TextEditingController())),
                  Expanded(
                    child: Input(
                        text: "Электронная почта",
                        controller: TextEditingController()),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                        value: isChecked,
                        onChanged: (_) {
                          setState(() {
                            isChecked = !isChecked;
                          });
                        },
                        splashRadius: 0,
                      ),
                    ),
                    SizedBox(width: 8,),
                    Text(forDataService, style: mediumText,).withHalfConstrained()

                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Transform.scale(
                      scale: 1.5,
                      child: Checkbox(
                        value: isCheckedTermsOfThePolicy,
                        onChanged: (_) {
                          setState(() {
                            isCheckedTermsOfThePolicy = !isCheckedTermsOfThePolicy;
                          });
                        },
                        splashRadius: 0,
                      ),
                    ),
                    SizedBox(width: 8,),
                    Text(termsOfThePolicy, style: mediumText,).withHalfConstrained()

                  ],
                ),
              ),
            ],
          ),
        ),
      ).withConstrained(),
    );
  }
}
