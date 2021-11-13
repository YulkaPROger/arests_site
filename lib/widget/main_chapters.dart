import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MainChapters extends StatefulWidget {
  const MainChapters({
    Key? key,
    required this.text,
    required this.image,
    required this.press,
    required this.bottomText,
  }) : super(key: key);

  final String text, bottomText, image;
  final VoidCallback press;

  @override
  State<MainChapters> createState() => _MainChaptersState();
}

class _MainChaptersState extends State<MainChapters>
    with SingleTickerProviderStateMixin {
  Duration duration = const Duration(milliseconds: 500);
  late AnimationController controller;
  late Animation<double> animation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: duration);
    animation = Tween<double>(begin: 0.9, end: 1).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: widget.press,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 16),
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Expanded(
                        child: MouseRegion(
                          onEnter: (event) {
                            print(event);
                            controller.forward();
                          },
                          onExit: (event) {
                            controller.reverse();
                          },
                          child: ScaleTransition(
                            scale: animation,
                            child: CircleAvatar(
                              backgroundColor: Colors.transparent,
                              child: ClipOval(
                                child: Image.asset(
                                  widget.image,
                                ),
                              ),
                              radius: MediaQuery.of(context).size.height / 3,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        widget.bottomText,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 10,
                    left: 10,
                    child: Text(
                      widget.text,
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
