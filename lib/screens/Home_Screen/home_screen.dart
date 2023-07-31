import 'package:ellawell/CustomWidgets/Custom_Text.dart';
import 'package:ellawell/CustomWidgets/custom_appbar.dart';
import 'package:ellawell/CustomWidgets/custom_bottom_navigation_bar.dart';
import 'package:ellawell/CustomWidgets/sized_box_widgets.dart';
import 'package:ellawell/UTILS/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../UTILS/images.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 100.h(context),
        child: SafeArea(
          child: Row(
            children: [
            145.width(context),

           SvgPicture.asset(Images.elavell_logo),



            120.width(context) ,
              Container(
                  height: 20,
                  child: SvgPicture.asset(Images.settings),




              ),
            ],
          ),
        ),
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //SvgPicture.asset('assets/images/portfolio_image.svg'),

        Container(
          height: 90.h(context),
          width: 390.w(context),
          decoration: BoxDecoration(
           // color: Colors.red,
            image: DecorationImage(
                image: AssetImage('assets/images/frames.png'),
               fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
            Positioned(
              top: 50,
               child: Container(
                height: 35.h(context),
                width: 390.w(context),
                color: Colors.black.withOpacity(0.5),
                 child: Row(
                   children: [
                  25.width(context),
                  Container(
                    height: 23.h(context),
                    width: 198.w(context),
                  decoration: BoxDecoration(
                   color: white,
                   borderRadius: BorderRadius.circular(5),
                    ),
                    child: Center(
                      child: CustomText(
                          text: 'It’s always your moment',
                          fontWeight: FontWeight.w500,
                          colors: outlinecolor,
                          fontsize:13,
                      ),
                    ),
                   ) ,
                  10.width(context),
                    SvgPicture.asset(Images.gallery),

                     5.width(context),
                     SvgPicture.asset(Images.camera),

                     5.width(context),
                     SvgPicture.asset(Images.profile),

                   ],
                 ),
              ),
            ),
            ],
          ),
        ) ,

       15.height(context),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CustomText(
                text: 'Today',
                fontWeight: FontWeight.w600,
                colors: black,
                 fontsize: 18,
                ),
          ),

          15.height(context),

          Expanded(

              child: Container(
               // height: 20,
                width: MediaQuery.of(context).size.width,
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index){
                     return Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.start,
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [

                           //================================== Frst Comment =====================================================

                           Container(
                             child: Row(
                               children: [
                                 CircleAvatar(
                                   radius: 28,
                                  child: SvgPicture.asset(Images.profile_image,height: 60,width: 2,)
                                 ),

                                 10.width(context),
                                 Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [

                                   CustomText(
                                       text: 'Pauline',
                                       fontWeight: FontWeight.w600,
                                       colors: black,
                                       fontsize: 15,
                                     ),

                                  5.height(context),

                                     CustomText(
                                       text: 'I have a beautiful Vacation here in Thailand',
                                       fontWeight: FontWeight.w500,
                                       colors: darktext_color,
                                       fontsize: 12,
                                     )  ,



                                   ],
                                 )
                               ],
                             ),
                           ),


                             Center(
                             child: Container(
                               height: 187.h(context),
                               width: 188.w(context),
                               decoration: BoxDecoration(
                               ),
                               child: SvgPicture.asset(Images.picture),
                             ),
                           ),

                             Padding(
                               padding: const EdgeInsets.symmetric(horizontal: 10),
                               child: Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                 children: [

                                 Row(
                                  children: [
                                   Container(
                                    height: 25.h(context),
                                    width: 54.w(context),
                                    //color: Colors.lightGreen,
                                     child: Stack(
                                      children: [
                                       Container(
                                      height:25.h(context),
                                      width: 25.w(context),
                                       decoration: BoxDecoration(
                                        color:white,
                                         shape: BoxShape.circle,
                                         boxShadow: [
                                           BoxShadow(
                                             color: Colors.grey.withOpacity(0.2),
                                             spreadRadius: 2,
                                             blurRadius: 5,
                                             offset: Offset(0, 3),
                                           ),
                                         ],
                                         border: Border.all(
                                           color: Colors.grey.shade300, // Outline color
                                           width: 1,
                                         ),
                                         ),
                                         child:SvgPicture.asset(Images.smiely,) ,
                                      ),

                                        Positioned(
                                          left:10,
                                          child: Container(
                                            height:25.h(context),
                                            width: 25.w(context),
                                            decoration: BoxDecoration(
                                               color:white,
                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  spreadRadius: 2,
                                                  blurRadius: 5,
                                                  offset: Offset(0, 3),
                                                ),
                                              ],
                                              border: Border.all(
                                                color: Colors.grey.shade300, // Outline color
                                                width: 1,
                                              ),
                                            ),
                                            child: SvgPicture.asset(Images.icon_100),
                                          ),
                                        ),

                                        Positioned(
                                          left:20 ,
                                          child: Container(
                                            height:25.h(context),
                                            width: 25.w(context),
                                            decoration: BoxDecoration(
                                              color:white,
                                              shape: BoxShape.circle,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.withOpacity(0.2),
                                                  spreadRadius: 2,
                                                  blurRadius: 5,
                                                  offset: Offset(0, 3),
                                                ),
                                              ],
                                              border: Border.all(
                                                color: Colors.grey.shade300, // Outline color
                                                width: 1,
                                              ),
                                            ),
                                            child: SvgPicture.asset(Images.smiely,),
                                          ),
                                        ),


                                      ],
                                    ),
                                   ),

                                    CustomText(
                                      text: '1.1k',
                                      fontWeight: FontWeight.w500,
                                      colors:textcolor ,
                                      fontsize: 12,
                                    )

                                  ],
                                ) ,

                                 CustomText(
                               text: '10:00',
                               fontWeight: FontWeight.w500,
                               colors:textcolor ,
                               fontsize: 12,
                           )
                           ],
                         ),
                             ),

                            20.height(context),

                            Divider(
                          height: 2,
                          color: gray,
                          ) ,

                           10.height(context),
                        //======================================== 2nd Comment ========================================================
                            Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(

                               children: [
                                 CircleAvatar(
                                   radius: 28,
                                   child: SvgPicture.asset(Images.girl_profile),
                                 ),

                                 5.width(context),

                                 Column(
                                   children: [

                                     Row(
                                       children: [
                                         CustomText(
                                           text: 'Isabell',
                                           fontWeight: FontWeight.w600 ,
                                           colors: black,
                                           fontsize: 15,
                                         ),
                                       5.width(context),
                                         CustomText(
                                           text: 'reacted to your post',
                                           fontWeight: FontWeight.w500 ,
                                           colors: textcolor,
                                           fontsize: 12,
                                         ),
                                       ],
                                     ),
                                   5.height(context),
                                     Row(
                                       children: [
                                         SvgPicture.asset(Images.icon_100), //

                                         5.width(context),
                                         CustomText(
                                           text: '[Such a beautiful picture]',
                                           fontWeight: FontWeight.w500 ,
                                           colors: textcolor,
                                           fontsize: 12,
                                         ),
                                       ],
                                     ),
                                   ],
                                 ),

                               ],

                             ),
                             SvgPicture.asset(Images.women_profile),


                           ],
                         ),

                           20.height(context),

                           Divider(
                             height: 2,
                             color: gray,
                           ) ,

                           20.height(context),

                         //===================================== Third Comment=============================================================

                           Row(
                             children: [

                               CircleAvatar(
                                 radius: 28,

                                 child: SvgPicture.asset(Images.girl_profile_2,height: 60,),
                               ),

                               10.width(context),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [

                                   CustomText(
                                     text: 'Martina',
                                     fontWeight: FontWeight.w600,
                                     colors: black,
                                     fontsize: 15,
                                   ),

                                   5.height(context),


                                   CustomText(
                                     text: 'This is my new Dance Video',
                                     fontWeight: FontWeight.w500,
                                     colors: darktext_color,
                                     fontsize: 12,
                                   ),





                                 ],
                               )
                             ],
                           ),


                           20.height(context),

                           Divider(
                             height: 2,
                             color: gray,
                           ) ,
                         ],
                       ),
                     );
                    }
                ),
              ),
            ),

          
        ],
      ),

      bottomNavigationBar: CustomNavigationBar(),

    );
  }
}
