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
             GestureDetector(
               onTap: (){
                 Navigator.pushNamed(context, RouterHelper.conversationscreen);
               },
               child: Padding(
                 padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                 child: Container(
                   height: 90.h(context),
                   width: 700.w(context),
                 // color: Colors.red,

                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 15),
                     child: Row(
                       children: [

                         Container(
                           height: 75.h(context),
                           width: 75.w(context),
                           decoration: BoxDecoration(
                             color: white,
                             shape: BoxShape.circle,
                             border: Border.all(
                               color: blue,
                               width: 3,
                             )
                           ),
                            child:Stack(
                              children:[
                                Positioned(
                                  left: 5.w(context),
                                  top: 3.h(context),
                                  child: Container(
                                    height: 63.h(context),
                                    width: 58.w(context),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: SvgPicture.asset(Images.girl_profile),
                                  ),
                                ),
                              ]
                            ),
                         ),

                         8.width(context),

                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [

                           20.height(context) ,
                             Container(
                               width: 260.w(context),
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

                             10.height(context),

                             Row(
                               children: [
                                 CustomText(
                                   text: 'When can we meet?',
                                   fontWeight: FontWeight.w500,
                                   colors: date_color,
                                   fontsize: 12,
                                  ),
                               97.width(context),
                                 Container(
                                   height: 19.h(context),
                                  width: 19.w(context),
                                   decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: greenshade,
                                   ),
                                   child: Center(
                                     child: CustomText(
                                         text: "1",
                                         fontWeight: FontWeight.w600,
                                         colors: white,
                                         fontsize: 12,
                                       fontFamily: "Poppins",
                                     ),
                                   ),
                                 )
                               ],
                             ),

                           5.height(context),

                            Container(
                              height: 1,
                              width: 260.w(context),
                              color: gray,
                            ),

                           ],
                         )

                       ],
                     ),
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
