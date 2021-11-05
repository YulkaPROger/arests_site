
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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

  Duration duration = const Duration(milliseconds: 500);
  late AnimationController controller;
  late Animation<double> animation;


  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: duration);
    animation = Tween<double>(begin: 1, end: 1.1).animate(controller);

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
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(widget.text, style: TextStyle(fontSize: 24, color: Colors.black,), textAlign: TextAlign.start,),
                Expanded(
                  child: MouseRegion(
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
                        child: ClipOval(child: Image.asset(widget.image)),

                      ),
                    ),

                  ),
                ),
                Text(widget.bottomText, style: TextStyle(fontSize: 16, color: Colors.black),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}