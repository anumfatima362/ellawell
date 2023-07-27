import 'package:ellawell/CustomWidgets/Custom_Text.dart';
import 'package:ellawell/CustomWidgets/sized_box_widgets.dart';
import 'package:ellawell/UTILS/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



class BlackButton extends StatelessWidget {
  String butontxt;
  Color color;
  final String? svgAssetPath;

  BlackButton({Key? key, required this.color ,required this.butontxt, this.svgAssetPath }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
    height: 45.h(context),
    width: 347.w(context),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: color,
    ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SvgPicture.asset(svgAssetPath!),
       //SvgPicture.asset('assets/images/phone_no.svg'),
        CustomText(
            text: butontxt,
            fontWeight: FontWeight.w400,
            colors: white,
            fontsize: 16,
        ),

        Container(),
      ],
    ),


    );
  }
}
