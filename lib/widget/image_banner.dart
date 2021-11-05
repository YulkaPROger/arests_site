import 'package:arests_site/extentions.dart';
import 'package:arests_site/string_const.dart';
import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  const ImageBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/2,
      child: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(
                      MediaQuery.of(context).size.width / 2, 75),
                  bottomRight: Radius.elliptical(
                    MediaQuery.of(context).size.width / 2,
                    75,
                  )),
              child: Image.asset('assets/images/modern-tech-background.jpg',
              fit: BoxFit.fitWidth,
              width: double.infinity,
              height: MediaQuery.of(context).size.height/2,)
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: const TextSpan(
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  children: [
                    TextSpan(text: 'АБК '),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Icon(
                        Icons.fiber_manual_record,
                        size: 8,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(text: ' Партнерам')
                  ],
                )),
                const Divider(
                  color: Colors.white,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      forPartnersHeader,
                      style: TextStyle(color: Colors.white, fontSize: 45),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      forPartnersMainText,
                      style: TextStyle(color: Colors.white, fontSize: 22),
                    ),
                  ],
                ).withHalfConstrained(),
              ],
            ).withConstrained(),
          ),
        ],
      ),
    );
  }
}
