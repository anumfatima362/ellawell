import 'package:ellawell/CustomWidgets/custom_appbar.dart';
import 'package:ellawell/CustomWidgets/sized_box_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../CustomWidgets/Custom_Text.dart';
import '../../UTILS/colors.dart';
import '../../UTILS/images.dart';


class ConversationScreen extends StatefulWidget {
  const ConversationScreen({Key? key}) : super(key: key);

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(

     appBar: CustomAppBar(
      height: 88,
        child: SafeArea(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

            Row(
              children: [
                10.width(context),
                GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(Images.left)),

                5.width(context),
                CircleAvatar(
                  radius: 25,
                  child: SvgPicture.asset(Images.profile_image, height: 70.h(context),),
                ),

              10.width(context),
               Column(
                 mainAxisAlignment: MainAxisAlignment.start,
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [

                   15.height(context),
                   CustomText(
                     text: "Nicole",
                     fontWeight: FontWeight.w600,
                     colors: black,
                     fontsize: 16,
                   ),

                   CustomText(
                     text: "Online",
                     fontWeight: FontWeight.w500,
                     colors: date_color,
                     fontsize: 12,
                   ),
                 ],
               ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18),
              child: Row(
               children: [
                SvgPicture.asset(Images.phoneicon,color: Colors.black,),
                35.width(context),
                SvgPicture.asset(Images.settings, color: Colors.black,)
               ],
           ),
            )
            ],
          ),
        )
    ),


     body: Column(
       children: [
         Expanded(

           child: ListView.builder(

                reverse: true,
                itemCount: 10,
                itemBuilder:(context, index){
                 return Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Container(

                     child: Text('hhjhja'),
                   ),
                 );
               }
           ),
         ),

         Divider(
           height: 1,
           color: Colors.black,
         ),
         Container(
           height: 58.h(context),
           padding: EdgeInsets.symmetric(horizontal: 8),
           child: Row(
             children: [
              SvgPicture.asset(Images.happy),
               SvgPicture.asset(Images.Attach),
               Expanded(
                 child: Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 4),
                   child: TextField(
                     
                     decoration: InputDecoration(
                     border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(12),
                       borderSide: BorderSide(
                         color: Colors.black,
                       )
                     ),
                       hintText: 'Message'
                     ),
                   ),
                 ),
               ),

               SvgPicture.asset(Images.unsplash),
               SvgPicture.asset(Images.microphone,),


             ],
           ),
         ),
       ],
     ),
    );
  }


}
