import 'package:ellawell/CustomWidgets/sized_box_widgets.dart';
import 'package:ellawell/Helper/route_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinput/pinput.dart';

import '../../CustomWidgets/Custom_Text.dart';
import '../../CustomWidgets/custom_black_button.dart';
import '../../UTILS/colors.dart';


class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(194, 194, 194, 1)),
        borderRadius: BorderRadius.circular(20),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      border: Border.all(color: Color.fromRGBO(225, 225, 225, 1)),
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Color.fromRGBO(234, 239, 243, 1),
      ),
    );
     return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,

        leading: GestureDetector(
            onTap: (){
            Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: black, size: 30,))
        //SvgPicture.asset('assets/images/back_arrow.svg' ,height: 10, width: 12,)
      ),


       body: SingleChildScrollView(

         child: Column(
           children: [

             10.height(context),

             Center(child: Image(image: AssetImage('assets/images/app_title.png'))),

             25.height(context),

             Container(
               height: 80.h(context),
               width: 250.w(context),
               // color: Colors.red,
               child:  CustomText(
                   text: "“Connect, Express  and Thrive!”",
                   textAlign: TextAlign.center,
                   fontWeight: FontWeight.w400,
                   colors: black,
                   fontsize: 28
               ),
             ),

             30.height(context),

             CustomText(
                 text: "Phone verification",
                 textAlign: TextAlign.center,
                 fontWeight: FontWeight.w700,
                 colors: black,
                 fontsize: 16
             ),

             8.height(context),
             Container(
               height: 44.h(context),
               width: 220.w(context),
               child: CustomText(
                   text: "We have sent a verification code to +4917637070169",
                   textAlign: TextAlign.center,
                   fontWeight: FontWeight.w400,
                   colors: black,
                   fontsize: 12
               ),
             ),

           20.height(context),

           Pinput(
             defaultPinTheme: defaultPinTheme,
             focusedPinTheme: focusedPinTheme,
             submittedPinTheme: submittedPinTheme,
             // validator: (s) {
             //   return s == '2222' ? null : 'Pin is incorrect';
             // },
             pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
             showCursor: true,
            // onCompleted: (pin) => print(pin),
           ),


          50.height(context),
             RichText(
                 text: TextSpan(
                     children: [
                       TextSpan(
                         text: "Don’t receive OTP Code?",
                         style: TextStyle(
                           color: black, // Set your desired color for the first part of the text
                           fontSize: 12.0, // Set your desired font size for the first part of the text
                           fontWeight: FontWeight.w700,
                         ),
                       ),
                       TextSpan(
                         text: " Send again",
                         style: TextStyle(
                           color: blue, // Set blue color for "Send again"
                           fontSize: 12.0, // Set your desired font size for "Send again"
                           fontWeight: FontWeight.w400,
                         ),
                       )
                     ]
                 )
             ),

           30.height(context),

             GestureDetector(
               onTap: (){
                 Navigator.pushNamed(context, RouterHelper.policy_screen);
               },
               child: BlackButton(
                 butontxt: 'Verify',
                 color: black,
                 svgAssetPath: '',

               ),
             ),
           ],
         ),
       )
    );
  }
}
