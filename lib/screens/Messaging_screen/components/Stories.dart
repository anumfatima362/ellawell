import 'package:ellawell/CustomWidgets/Custom_Text.dart';
import 'package:ellawell/CustomWidgets/sized_box_widgets.dart';
import 'package:ellawell/UTILS/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../UTILS/images.dart';


class StoriesScreen extends StatefulWidget {
  const StoriesScreen({Key? key}) : super(key: key);

  @override
  State<StoriesScreen> createState() => _StoriesScreenState();
}

class _StoriesScreenState extends State<StoriesScreen>  {




   @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        10.height(context),


        Row(
          children: [
            18.width(context),

            Container(
              height: 72.h(context),
              width: 72.w(context),
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle
              ),
              child: Stack(
                children: [
                  SvgPicture.asset(Images.girl_profile_2, height: 70,),

                  Positioned(
                    left: 48.w(context),
                    top: 53.h(context),
                    child: Container(
                      height: 18.h(context),
                      width: 18.w(context),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          shape: BoxShape.circle
                    ),
                      child: Icon(Icons.add,color: Colors.white, size: 15,),
                    ),
                  ),
                ],
              ),
            ),
            // CircleAvatar(
            //   radius: 30,
            // ),
          8.width(context),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              CustomText(
                  text: "My Stories",
                  fontWeight: FontWeight.w600,
                  colors: black,
                  fontsize: 16,
                  fontFamily: "Poppins",
              ),



                CustomText(
                  text: "Click here to make a story",
                  fontWeight: FontWeight.w500,
                  colors: date_color,
                  fontsize: 12,
                  fontFamily: "Poppins",
                ),

              ],
            )
          ],
        ),

        Padding(
          padding: const EdgeInsets.only(top: 30, left: 10),
          child: CustomText(
            text: "New stories",
            fontWeight: FontWeight.w600,
            colors: date_color,
            fontsize: 14,
            fontFamily: "Poppins",
          ),
        ),

        Expanded(
          child: ListView.builder(
               itemCount: 4,
              itemBuilder: (context, index){
                return Padding(
                  padding: const EdgeInsets.only( top: 10,),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 30,
                      child: SvgPicture.asset(Images.girl_profile),
                    ),
                    title: CustomText(
                        text: "Nicole",
                        fontWeight: FontWeight.w600,
                        colors: black,
                        fontsize: 16,
                      fontFamily: "Poppins",
                    ),

                    subtitle: CustomText(
                      text: "Today,13:39",
                      fontWeight: FontWeight.w500,
                      colors: date_color,
                      fontsize: 12,
                      fontFamily: "Poppins",
                    ),
                  ),
                );


              }



          ),
        )
      ],
    );
  }
}
