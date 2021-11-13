import 'package:arests_site/constants.dart';
import 'package:arests_site/constants_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AnimatedItemDebtors extends StatefulWidget {
  const AnimatedItemDebtors({
    Key? key,
    required this.nameOfPart,
    required this.picture,
    required this.callback,
  }) : super(key: key);

  final String nameOfPart, picture;
  final VoidCallback callback;

  @override
  State<AnimatedItemDebtors> createState() => _AnimatedItemDebtorsState();
}

class _AnimatedItemDebtorsState extends State<AnimatedItemDebtors> {
  bool _isEnter = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.callback,
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            _isEnter = true;
          });
        },
        onExit: (event) {
          setState(() {
            _isEnter = false;
          });
        },
        child: AnimatedContainer(
            margin:
                _isEnter ? const EdgeInsets.all(0) : const EdgeInsets.all(15),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                boxShadow: [
              _isEnter
                  ? BoxShadow(color: Colors.black12, blurRadius: 5)
                  : BoxShadow(color: Colors.transparent)
            ],
            color: Colors.white ),
            padding: const EdgeInsets.all(8),
            duration: const Duration(milliseconds: 250),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  widget.picture,
                  width: kMaxWidth / 10,
                  height: kMaxWidth / 10,
                ),
                Spacer(),
                Text(
                  widget.nameOfPart,
                  style: mediumText,
                  textAlign: TextAlign.center,
                )
              ],
            )),
      ),
    );
  }
}
