import 'dart:ffi';
import 'package:flutter/material.dart';
import 'dimension_widgets.dart';



extension IntExtension on int {

  // Extension use for sized box

  // To create space vertically of horizontally.

  Widget height(BuildContext context) => SizedBox(height: MediaQueryUtil.widgetHeight(context, toDouble()));

  Widget width(BuildContext context) => SizedBox(width: MediaQueryUtil.widgetWidth(context, toDouble()));


  // Extension use for height and width of the widget
  double h(BuildContext context) => MediaQueryUtil.widgetHeight(context, toDouble());

  double w(BuildContext context) => MediaQueryUtil.widgetWidth(context, toDouble());
}





//this is also used for sized box with  media query
// extension WidgetSpacing on int {
//   SizedBox get width => SizedBox(width: toDouble());
//   SizedBox get height => SizedBox(height: toDouble());
// }
