import 'package:flutter/widgets.dart';

extension PaddingExtension on Widget {
  Widget withPadding(EdgeInsets padding) {
    return Padding(
      padding: padding,
      child: this,
    );
  }
}
