

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class TextUtils extends StatelessWidget {

  TextUtils({
    required this.text,
    required this.fontSize,
    this.fontWeight,
    required this.color,
    this.textDecoration,
  });
  final String? text;
  final double? fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final TextDecoration? textDecoration;



  @override
  Widget build(BuildContext context) {
    return  Text(
      '${text!.toString()}',
      style: GoogleFonts.lato(
        decoration: textDecoration,
        textStyle: TextStyle(
          color: color,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),

      ),
    );
  }
}
