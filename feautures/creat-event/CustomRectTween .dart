import 'dart:ui';

import 'package:flutter/material.dart';

class CustomRectTween extends RectTween {
  CustomRectTween({Rect? begin, Rect? end}) : super(begin: begin, end: end);

  @override
  Rect lerp(double t) {
    double easing = Curves.easeInOut.transform(t);
    return Rect.fromLTRB(
      lerpDouble(begin!.left, end!.left, easing)!,
      lerpDouble(begin!.top, end!.top, easing)!,
      lerpDouble(begin!.right, end!.right, easing)!,
      lerpDouble(begin!.bottom, end!.bottom, easing)!,
    );
  }
}

