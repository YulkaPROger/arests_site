import 'package:arests_site/constants.dart';
import 'package:flutter/material.dart';


class MainMenuItem extends StatelessWidget {
  final String text;
  final bool isActive;
  final VoidCallback? press;
  const MainMenuItem({
      Key? key,
        required this.text, required this.isActive, required this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding/2 ),
        decoration: BoxDecoration(
            border: Border(
                bottom: BorderSide(
                    color: isActive ? Colors.white : Colors.transparent, width: 3))),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontWeight: isActive? FontWeight.w600 : FontWeight.normal),
        ),
      ),
    );
  }
}