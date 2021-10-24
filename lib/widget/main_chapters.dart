
import 'package:flutter/material.dart';

class MainChapters extends StatefulWidget {
  const MainChapters({
    Key? key, required this.text, required this.image, required this.press, required this.bottomText,
  }) : super(key: key);

  final String text, bottomText, image;
  final VoidCallback press;

  @override
  State<MainChapters> createState() => _MainChaptersState();
}

class _MainChaptersState extends State<MainChapters> with SingleTickerProviderStateMixin {

  static const Color beginColor = Colors.deepPurple;
  static const Color endColor = Colors.deepOrange;
  Duration duration = const Duration(milliseconds: 500);
  late AnimationController controller;
  late Animation<double> animation;


  @override
  void initState() {
    super.initState();

    controller = AnimationController(vsync: this, duration: duration, lowerBound: 0.6, upperBound: 1.0);
    animation =
        CurvedAnimation(parent: controller, curve: Curves.easeInOutBack);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {

    return Flexible(
      child: InkWell(
        onTap: widget.press,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(widget.text, style: TextStyle(fontSize: 32, color: Colors.black),),
            MouseRegion(
              onEnter: (event){
                print(event);
                controller.forward();
              },
              onExit: (event){
                controller.reverse();
              },
              child: ScaleTransition(
                scale: animation,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 50),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: AssetImage(widget.image),
                    radius: MediaQuery.of(context).size.height/4  ,
                  ),
                ),
              ),

            ),
            Text(widget.bottomText, style: TextStyle(fontSize: 16, color: Colors.black),),
          ],
        ),
      ),
    );
  }
}