import 'package:ellawell/CustomWidgets/Custom_Text.dart';
import 'package:ellawell/CustomWidgets/custom_appbar.dart';
import 'package:ellawell/CustomWidgets/custom_bottom_navigation_bar.dart';
import 'package:ellawell/CustomWidgets/sized_box_widgets.dart';
import 'package:ellawell/UTILS/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



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
             Image(image: AssetImage('assets/images/ellavell-logo.png')),

            120.width(context) ,
              Container(
                  height: 20,
                  child: Image(image: AssetImage('assets/images/setttings.png', ))),
            ],
          ),
        ),
      ),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [


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
                    Image(image: AssetImage('assets/images/Image.png')),
                     5.width(context),
                     Image(image: AssetImage('assets/images/camera.png')),
                     5.width(context),
                     Image(image: AssetImage('assets/images/person_icon.png'))
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
                                 //Text('DIRKFDRF'),
                                 CircleAvatar(
                                   radius: 28,
                                   backgroundImage: AssetImage('assets/images/profice_pic.png'),
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
                                   image: DecorationImage(
                                       image: AssetImage('assets/images/girl_image.png')

                                   )
                               ),
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
                                       image: DecorationImage(
                                        image: AssetImage('assets/images/smily.png'),
                                      ),
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
                                      ),

                                        Positioned(
                                          left:10,
                                          child: Container(
                                            height:25.h(context),
                                            width: 25.w(context),
                                            decoration: BoxDecoration(
                                              color:white,
                                              image: DecorationImage(
                                                image: AssetImage('assets/images/100_icon.png'),
                                              ),
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
                                          ),
                                        ),

                                        Positioned(
                                          left:20 ,
                                          child: Container(
                                            height:25.h(context),
                                            width: 25.w(context),
                                            decoration: BoxDecoration(
                                              color:white,
                                              image: DecorationImage(
                                                image: AssetImage('assets/images/smily.png'),
                                              ),
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
                                   backgroundImage: AssetImage('assets/images/girl2.png'),
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
                                        Image(image: AssetImage('assets/images/100_icon.png')),

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
                             Image(image: AssetImage('assets/images/girl4.png')),
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
                                 backgroundImage: AssetImage('assets/images/girl5.png'),
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
