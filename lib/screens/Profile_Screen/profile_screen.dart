import 'package:ellawell/CustomWidgets/Custom_Text.dart';
import 'package:ellawell/CustomWidgets/custom_bottom_navigation_bar.dart';
import 'package:ellawell/CustomWidgets/sized_box_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../UTILS/colors.dart';
import '../../UTILS/images.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child:  Scaffold(
          backgroundColor: Colors.white,
          body: Column(
            children: [

              Container(
                height: 245,
                width: 390.w(context),
                // color: Colors.red,
                child: Stack(
                  children: [
                    SvgPicture.asset(Images.profile_frame,height: 300,),

                    Positioned(
                        top: 144.h(context),
                        child: Container(
                            height: 135.h(context),
                            //color: Colors.red,
                            child: SvgPicture.asset(Images.white_angled_triagle,))
                    ),

                    Positioned(
                      left: 138.w(context),
                      top: 140.h(context),
                      child: Container(
                        height: 120.h(context),
                        width: 100.w(context),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red
                        ),
                        child: SvgPicture.asset(Images.girl_profile_2,),
                      ),
                    ),


                    Positioned(
                      left: 150,
                      top: 220,
                      child: CustomText(
                        text: 'Sandra',
                        fontWeight: FontWeight.w600,
                        colors: black,
                        fontsize: 15,
                        fontFamily: 'Poppins',
                      ),
                    )
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  CustomText(
                    text: '580',
                    fontWeight: FontWeight.w600,
                    colors: black,
                    fontsize: 14,
                    fontFamily: 'Poppins',
                  ),


                  2.width(context),

                  CustomText(
                    text: 'Friends',
                    fontWeight: FontWeight.w400,
                    colors: black,
                    fontsize: 14,
                    fontFamily: 'Poppins',
                  ),
                ],
              ),

              15.height(context),
              Row(
                children: [
                  10.width(context),

                  Container(
                    height: 46.h(context),
                    width: 173.w(context),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(12)
                    ),

                    child:Center(
                      child: CustomText(
                        text: 'Circled',
                        fontWeight: FontWeight.w400,
                        colors: black,
                        fontsize: 14,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),

                  10.width(context),

                  Container(
                    height: 46.h(context),
                    width: 173.w(context),
                    decoration: BoxDecoration(
                        color: black,
                        borderRadius: BorderRadius.circular(12)
                    ),

                    child:Center(
                      child: CustomText(
                        text: 'Messages',
                        fontWeight: FontWeight.w400,
                        colors: white,
                        fontsize: 14,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ],
              ),


              50.height(context),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TabBar(
                    indicatorColor: blue,
                    indicatorSize: TabBarIndicatorSize.label,
                    tabs: [
                      CustomText(
                        text: 'All',
                        fontWeight: FontWeight.w400,
                        colors: black,
                        fontsize: 14,
                        fontFamily: 'Poppins',
                      ),

                      CustomText(
                        text: 'Pictures',
                        fontWeight: FontWeight.w400,
                        colors: gray,
                        fontsize: 14,
                        fontFamily: 'Poppins',
                      ),


                      CustomText(
                        text: 'Videos',
                        fontWeight: FontWeight.w400,
                        colors: gray,
                        fontsize: 14,
                        fontFamily: 'Poppins',
                      ),
                    ]
                ),
              ),


            Expanded(
              child: TabBarView(
                children: [
                  Container(
                    width: 200,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: GridView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                          itemCount: 11,
                        scrollDirection: Axis.vertical,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            mainAxisSpacing: 2,
                            crossAxisSpacing: 4,
                            crossAxisCount: 3,
                            childAspectRatio: 0.99,
                          ),
                          itemBuilder:(context,index){
                            return Container(
                              width: 100,
                              //color: Colors.red,
                              child: SvgPicture.asset(Images.image, height: 80,),
                            );
                          }
                      ),
                    ),
                  )
                ],
              ),
            )
            ],
          ),
          bottomNavigationBar:CustomNavigationBar(),
        )

    );
  }
}
