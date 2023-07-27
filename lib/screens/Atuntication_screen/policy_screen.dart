import 'package:ellawell/CustomWidgets/Custom_Text.dart';
import 'package:ellawell/CustomWidgets/sized_box_widgets.dart';
import 'package:ellawell/Helper/route_helper.dart';
import 'package:ellawell/UTILS/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';





 class PolicyScreen extends StatefulWidget {
   const PolicyScreen({Key? key}) : super(key: key);

  @override
  State<PolicyScreen> createState() => _PolicyScreenState();
}

class _PolicyScreenState extends State<PolicyScreen> {
 // bool status = false;

  bool isSwitched = false;
  var textValue = 'Switch is OFF';

  void toggleSwitch(bool value) {

    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
        textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
        textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }



  @override
   Widget build(BuildContext context) {
     return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
       elevation: 0,
       automaticallyImplyLeading: false,
       leading: GestureDetector(
       onTap: (){
         Navigator.pop(context);
       },
         child: Icon(Icons.close,color: black, size: 28, )),
       ),


       body: Column(

         children: [

        20.height(context),

           Center(
             child: CustomText(
                 text: 'Terms of use  and Privacy Policy',
                 fontWeight: FontWeight.w600,
                 colors: black,
                 fontsize: 16,
                textAlign: TextAlign.center,
             ),
           ),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15, ),
             child: CustomText(
               text: 'Read the page as well as the updated Terms of Use and Privacy Policy.',
               fontWeight: FontWeight.w500,
               colors: darkgray,
               fontsize: 14,
             ),
           ),



        30.height(context),
           Center(
             child: CustomText(
               text: 'Age requirement at Ellavell',
               fontWeight: FontWeight.w600,
               colors: black,
               fontsize: 16,
               textAlign: TextAlign.center,
             ),
           ),

           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 20),
             child: RichText(
                 text: TextSpan(
                  // style: DefaultTextStyle.of(context).style,
                   children: [
                     TextSpan(
                       text: 'Ellavell is responsible for your data and information when you use Ellavell.You must be at least',
                       style: TextStyle(color: darkgray,fontWeight: FontWeight.w500, fontSize: 14),
                     ),

                     TextSpan(
                       text: ' 18 years old ',
                       style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w500, fontSize: 14),
                     ),

                     TextSpan(
                       text: 'to use Ellavell.',
                       style: TextStyle(color: darkgray,fontWeight: FontWeight.w500, fontSize: 14),
                     ),
                   ]
                 )
             ),
           ),

           30.height(context),


           Container(
                   height: 164.h(context),
                  width: 360.w(context),
                  decoration: BoxDecoration(
                  color:darkwhite,
                  border: Border.all(
                color: outlinecolor,
                    ),
                 borderRadius: BorderRadius.circular(15),
           ),

            child: Column(

              children: [

               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   20.height(context),
                   Center(
                     child: Container(
                       height:42.h(context)  ,
                       width: 243.w(context),
                       child: Center(
                         child: CustomText(
                             text: 'Confirm that you are at least 18 years old.',
                             fontWeight: FontWeight.w500,
                             colors: darkgray,
                             fontsize: 14
                         ),
                       ),

                     ),
                   ),

                   5.width(context),

                 Switch(
                 onChanged: toggleSwitch,
                 value: isSwitched,
                 activeColor: Colors.blue,
                 activeTrackColor: Colors.yellow,
                 inactiveThumbColor: inactive_thumb_color,
                 inactiveTrackColor: inactive_track_color,
               ),

                 ],
               ),

             15.height(context),

             Divider(),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),

                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Center(
                          child: Container(
                            height:42.h(context)  ,
                            width: 243.w(context),
                            child: CustomText(
                                text: 'Tap Agree to agree to our Terms of Service.',
                                fontWeight: FontWeight.w500,
                                colors: darkgray,
                                fontsize: 14
                            ),
                          ),
                        ),

                        15.width(context),

                       GestureDetector(
                         onTap: (){
                           Navigator.pushNamed(context, RouterHelper.home_screen);
                         },
                         child: Container(
                         height: 35.h(context),
                         width: 75.w(context),
                         decoration: BoxDecoration(
                         color: blue,
                         borderRadius: BorderRadius.circular(10),
                           ),
                           child: Center(
                             child: CustomText(
                                 text: 'Agree',
                                 fontWeight:FontWeight.w400 ,
                                 colors: white ,
                                 fontsize: 14,
                             ),
                           ),
                         ),
                       ),
                      ],
                    ),
                  ),
                ),


           ],
            ),
           ),


         ],
       ),
     );
   }
}
