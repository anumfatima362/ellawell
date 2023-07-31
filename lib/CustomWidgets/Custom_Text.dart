import 'package:flutter/material.dart';


class CustomText extends StatelessWidget {
  final String text;
  final FontWeight fontWeight;
  final double fontsize;
  final FontStyle? fontStyle;
  final Color colors;
  final TextAlign? textAlign;
   final String? fontFamily;
  const CustomText({Key? key, required this.text, required this.fontWeight, required this.colors, this.fontStyle, required this.fontsize, this.textAlign,  this.fontFamily}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(

        fontWeight: fontWeight,
        fontSize: fontsize,
        color: colors,
        fontStyle: fontStyle,
        fontFamily:fontFamily ,
      ),
    );
  }
}
