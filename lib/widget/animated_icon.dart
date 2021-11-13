import 'package:arests_site/constants.dart';
import 'package:arests_site/constants_style.dart';
import 'package:flutter/material.dart';

class AnimatedItemGrid extends StatefulWidget {
  const AnimatedItemGrid({
    Key? key,
    required this.nameOfPart,
    required this.picture,
    required this.callback,
  }) : super(key: key);

  final String nameOfPart, picture;
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
        child: Stack(
          fit: StackFit.expand,
          children: [
            AnimatedContainer(
              margin:
                  _isEnter ? const EdgeInsets.all(15) : const EdgeInsets.all(35),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(kMaxWidth / 10)),
                boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 5)],
                image: DecorationImage(
                  image: AssetImage(widget.picture),
                ),
              ),
              padding: const EdgeInsets.all(8),
              duration: const Duration(milliseconds: 500),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Text(
                widget.nameOfPart,
                style: mediumText,
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
