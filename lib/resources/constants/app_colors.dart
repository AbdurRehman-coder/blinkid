
import 'dart:ui';


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppColors{
  static const Color primaryBlueColor =  Color(0xFF1FACEA);
  static const Color primaryRedColor =  Color(0xFFEB4768);
  static const Color primaryBlackColor =  Color(0xFF0D313B);
  static const Color grayTextColor =  Color(0xFFABB4C4);
  static const Color whiteLightBackground =  Color(0xFFEBEBEB);
  static Color greyContainerBackground =  Colors.grey.shade200;
  static const Color greyText =  Color(0xFFA9B8C6);


  static LinearGradient getGradientColor() {
    return LinearGradient(
      colors: [
        Color(0xff1FACEA).withOpacity(0.3),
        Color(0xffEB4768).withOpacity(0.3),
      ],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
    );
  }
}