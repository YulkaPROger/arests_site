import 'package:arests_site/constants.dart';
import 'package:arests_site/constants_style.dart';
import 'package:flutter/material.dart';

class AnimatedItemGrid extends StatefulWidget {
  const AnimatedItemGrid({
    Key? key,
    required this.nameOfPart,
    required this.iconData,
    required this.callback,
  }) : super(key: key);

  final String nameOfPart;
  final IconData iconData;
  final VoidCallback callback;

  @override
  State<AnimatedItemGrid> createState() => _AnimatedItemGridState();
}

class _AnimatedItemGridState extends State<AnimatedItemGrid> {
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
            margin: _isEnter ? const EdgeInsets.all(0) : const EdgeInsets.all(15),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(kMaxWidth / 10)),
                boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 5)],
                color: Colors.white),
            padding: const EdgeInsets.all(8),
            duration: const Duration(milliseconds: 500),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  widget.iconData,
                  size: kMaxWidth / 10,
                ),
                Text(widget.nameOfPart, style: mediumText,)
              ],
            )),
      ),
    );
  }
}
