import 'package:ellawell/CustomWidgets/Custom_Text.dart';
import 'package:ellawell/CustomWidgets/sized_box_widgets.dart';
import 'package:ellawell/Helper/route_helper.dart';
import 'package:ellawell/UTILS/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../UTILS/images.dart';


class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
         itemCount: 5,
        itemBuilder: (context,index){
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
               child: GestureDetector(
                 onTap: (){
                   Navigator.pushNamed(context, RouterHelper.conversationscreen);
                 },
                 child: Container(
                   height: 80.h(context),
                   width: 386.w(context),
                  // color: Colors.red,
                   child: Row(
                     children: [
                       CircleAvatar(
                         radius: 28,
                         backgroundColor: Colors.red,
                         child:  SvgPicture.asset(Images.girl_profile),
                       ),

                       8.width(context),

                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [

                         15.height(context) ,
                           Container(
                             width: 300.w(context),
                             child: Row(
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: [
                                 CustomText(
                                     text: 'Abraham',
                                     fontWeight: FontWeight.w600,
                                     colors: black,
                                     fontsize: 16,
                                 ),




                                 CustomText(
                                   text: '29.05.2023',
                                   fontWeight: FontWeight.w500,
                                   colors: date_color,
                                   fontsize: 12,
                                 ),
                               ],
                             ),
                           ),
                           5.height(context),
                           CustomText(
                             text: 'When can we meet?',
                             fontWeight: FontWeight.w500,
                             colors: date_color,
                             fontsize: 12,
                            ),

                         5.height(context),
                          Container(
                            height: 1,
                            width: 300.w(context),
                            color: gray,
                          ),

                         ],
                       )

                     ],
                   ),
                 ),
               ),
             ),



           ], 
          );
        }

    );
  }
}
