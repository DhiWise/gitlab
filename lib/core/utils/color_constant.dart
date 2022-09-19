import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color bluegray700 = fromHex('#474d57');

  static Color black900 = fromHex('#000000');

  static Color bluegray400 = fromHex('#888888');

  static Color bluegray200 = fromHex('#bbc0ca');

  static Color bluegray101 = fromHex('#d2d2d2');

  static Color bluegray100 = fromHex('#d6dae2');

  static Color gray101 = fromHex('#f3f2f2');

  static Color whiteA700 = fromHex('#ffffff');

  static Color gray50 = fromHex('#fcfcfc');

  static Color gray100 = fromHex('#f3f1f1');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
