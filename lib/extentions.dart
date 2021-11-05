import 'package:arests_site/constants.dart';
import 'package:flutter/cupertino.dart';

extension ConstrainedMaxWidthExtentions on Widget {
  Widget withConstrained() => ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: kMaxWidth),
      child: Container(
        alignment: AlignmentDirectional.topStart,
        child: this,
      ));

  Widget withHalfConstrained() => ConstrainedBox(
      constraints: const BoxConstraints(maxWidth: kMaxWidth/2),
      child: Container(
        alignment: AlignmentDirectional.topStart,
        child: this,
      ));
}
