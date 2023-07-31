import 'package:ellawell/CustomWidgets/Custom_Text.dart';
import 'package:ellawell/CustomWidgets/custom_bottom_navigation_bar.dart';
import 'package:ellawell/CustomWidgets/sized_box_widgets.dart';
import 'package:ellawell/UTILS/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../UTILS/images.dart';



class BalanceScreen extends StatelessWidget {
  const BalanceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     backgroundColor: darkblack,


      body: SafeArea(

        child: SingleChildScrollView(


          child: Column(
            children: [

           15.height(context),
            Center(
              child: CircleAvatar(
                radius: 28,
                child: SvgPicture.asset(Images.girl_profile_2,height: 60,),
              ),
            ),

           CustomText(
               text: "Hello Sarah",
               fontWeight: FontWeight.w400,
               colors: white,
               fontsize: 14,
               fontStyle:FontStyle.normal,
               fontFamily: 'Poppins',
           ),

              10.height(context),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
             height: 1.h(context),
             width: 800.w(context),
                 color: dividercolor,
             ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CustomText(
                    text: "€",
                    fontWeight: FontWeight.w700,
                    colors: white,
                    fontsize: 35,
                  ),

                  12.width(context),

                  Column(
                    children: [
                   10.height(context),
                      CustomText(
                        text: "1000,00",
                        fontWeight: FontWeight.w700,
                        colors: green,
                        fontFamily: 'Inter',
                        fontsize: 35,
                      ),

                      CustomText(
                        text: "Your Balance",
                        fontWeight: FontWeight.w400,
                        colors: white,
                        fontFamily: 'Poppins',
                        fontsize: 12,
                      ),
                    ],
                  ),
                  12.width(context),
                  CustomText(
                    text: "EUR",
                    fontWeight: FontWeight.w400,
                    colors: white,
                    fontFamily: 'Poppins',
                    fontsize: 12,
                  ),
                ],
              ),

              10.height(context),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 1.h(context),
                  width: 800.w(context),
                  color: dividercolor,
                ),
              ),


              20.height(context),

              Container(
                 height: 525.h(context),
                 width: 390.w(context),
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                ),
               ),
            ],
          ),
        ),
      ),



























      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
