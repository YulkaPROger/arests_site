import 'package:arests_site/constants_style.dart';
import 'package:arests_site/extentions.dart';
import 'package:flutter/material.dart';

import '../string_const.dart';

class ImageBanner extends StatelessWidget {
  const ImageBanner({
    Key? key,
    required this.image,
    required this.path,
    required this.header,
    required this.text,
  }) : super(key: key);

  final String image, path, header, text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 2,
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
              child: Image.asset(
                image,
                fit: BoxFit.fitWidth,
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 2,
              )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  children: [
                    TextSpan(text: nameCompany),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child: Icon(
                        Icons.fiber_manual_record,
                        size: 8,
                        color: Colors.white,
                      ),
                    ),
                    TextSpan(text: path)
                  ],
                )),
                const Divider(
                  color: Colors.white,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      header,
                      style: bigWhiteText,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      text,
                      style:  mediumWhiteText,
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
