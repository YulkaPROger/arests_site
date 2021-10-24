
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

class _MainChaptersState extends State<MainChapters> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {

    late final AnimationController _controller = AnimationController(
      duration: const Duration(seconds: 10),
      vsync: this,
    )..repeat();



    @override
    void dispose() {
      _controller.dispose();
      super.dispose();
    }

    return Flexible(
      child: InkWell(
        onTap: widget.press,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(widget.text, style: TextStyle(fontSize: 32, color: Colors.black),),
            MouseRegion(
              onEnter: (event){
                print(event);
              },
              child: AnimatedBuilder(
                animation: _controller,
                child: Container(
                  width: 200.0,
                  height: 200.0,
                  color: Colors.green,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(widget.image),
                    radius: MediaQuery.of(context).size.height/4,
                  ),
                ),
                builder: (BuildContext context, Widget? child) {
                  return Transform.scale(
                    scale: 1.3,
                    child: child,
                  );
                },
              ),

            ),
            Text(widget.bottomText, style: TextStyle(fontSize: 16, color: Colors.black),),
          ],
        ),
      ),
    );
  }
}