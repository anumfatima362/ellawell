import 'package:ellawell/CustomWidgets/custom_black_button.dart';
import 'package:ellawell/CustomWidgets/sized_box_widgets.dart';
import 'package:ellawell/Helper/route_helper.dart';
import 'package:ellawell/UTILS/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../CustomWidgets/Custom_Text.dart';
import '../../UTILS/colors.dart';



class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: SafeArea(


        child: Column(

          children: [
            34.height(context),

          Center(child:

          // SvgPicture.asset(Images.apptittle),),
          Image(image: AssetImage(Images.apptittle)
          )),

            52.height(context),

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

            110.height(context),

            GestureDetector(
              onTap: (){
              Navigator.pushNamed(context, RouterHelper.signup_with_phoneno);
                },
              child: BlackButton(
                butontxt: 'Continue with Phone',
                color: black,
                svgAssetPath: Images.phoneicon,

              ),
            ),

          50.height(context)  ,
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
             Container(
             width: 145.w(context),
             height: 2.h(context),
             color: verylightgray,
             ),

              CustomText(
                  text: 'OR',
                  fontWeight: FontWeight.w400,
                  colors: black,
                  fontsize: 15,
              ),


              Container(
                width: 145.w(context),
                height: 2.h(context),
                color: verylightgray,
              ),
            ],
            ),

            30.height(context)  ,

            Container(
             height: 179.h(context),
             width: 365.w(context),
              decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(25),
              color: lightgray,
               ),
              child: Stack(
               children: [
               Positioned(
                 top: 12.h(context) ,
                 left: 8.w(context),
                 child: BlackButton(
                     butontxt: "Sign in with Email",
                     color: black,
                     svgAssetPath: '',

                 ),
               ),

                  Positioned(
                    top: 69.h(context) ,
                    left: 8.w(context),
                    child: BlackButton(
                    butontxt: "Continue with Google",
                     color: gray,
                      svgAssetPath: Images.goggleicon,

                    ),
                  ),


                 Positioned(
                   top: 125.h(context) ,
                   left: 8.w(context),
                   child: BlackButton(
                     butontxt: "Continue with Apple",
                     color: gray,
                     svgAssetPath: Images.appleicon,

                   ),
                 ),


             ],
          ),
         ),

            30.height(context)  ,

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Container(
              height: 85.h(context),
              width: 375.w(context),
              //color: Colors.red,
               child: CustomText(
                   text: 'By continuing, you agree to our Terms of Service and confirm that you have read our Privacy Policy to learn how we collect, use and share your information.',
                    textAlign: TextAlign.center,
                   fontWeight: FontWeight.w400,
                   colors: black,
                   fontsize: 13,
               ),
         ),
            )

          ],
        ),
      ),
    );
  }
}
