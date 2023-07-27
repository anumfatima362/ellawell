import 'package:ellawell/CustomWidgets/Custom_Text.dart';
import 'package:ellawell/CustomWidgets/sized_box_widgets.dart';
import 'package:ellawell/UTILS/colors.dart';
import 'package:flutter/material.dart';


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
               padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 5),
               child: Row(
                 children: [
                   CircleAvatar(
                     radius: 28,
                     backgroundImage: AssetImage('assets/images/girl2.png'),
                     backgroundColor: Colors.red,
                   ),

                   10.width(context),

                   Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
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

                       CustomText(
                         text: 'When can we meet?',
                         fontWeight: FontWeight.w500,
                         colors: date_color,
                         fontsize: 12,
                        ),

                     10.height(context),
                      Container(
                        height: 1,
                        width: 300.w(context),
                        color: gray,
                      ),

                     ],
                   )

                 ],
               ),
             )

           ], 
          );
        }

    );
  }
}
