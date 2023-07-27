import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/colors.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget child;
  final double height;

  CustomAppBar({
    required this.child,
    this.height = kToolbarHeight,
  });

  @override
  Size get preferredSize => Size.fromHeight(height);
  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.orange,
      height: preferredSize.height,
      child: child,
      decoration: BoxDecoration(
        //    color:Colors.deepOrange,       // Set the color of the border
                               // Set the width of the border


      ),
    );
  }
}