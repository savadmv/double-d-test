import 'package:flutter/material.dart';

class AppColors {


  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color n10 = Color(0xff1D232B);
  static const Color n9 = Color(0xff313B49);
  static const Color n5 = Color(0xff919EB6);
  static const Color n7 = Color(0xff5A6B87);
  static const Color n1 = Color(0xffF7F8FA);
  static const Color n3 = Color(0xffCED3DE);
  static const Color n4 = Color(0xffAFB9CA);

  static const Color pops = Color(0xff01B99F);


  static Color hexToColor(String code) {
    return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
  }
}