import 'package:ellawell/CustomWidgets/Custom_Text.dart';
import 'package:ellawell/CustomWidgets/custom_black_button.dart';
import 'package:ellawell/CustomWidgets/sized_box_widgets.dart';
import 'package:ellawell/Helper/route_helper.dart';
import 'package:ellawell/UTILS/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class PhoneSignup extends StatefulWidget {
  const PhoneSignup ({Key? key}) : super(key: key);

  @override
  State<PhoneSignup> createState() => _PhoneSignupState();
}

 class _PhoneSignupState extends State<PhoneSignup> {
   final TextEditingController countryCodeController = TextEditingController();
   final TextEditingController phoneNumberController = TextEditingController();


   @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SafeArea(

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Center(
              child: CustomText(
                  text: "Enter your phone number to sign up",
                  fontWeight: FontWeight.w400,
                  colors: black,
                  fontsize: 16,
              ),
             ),

           40.height(context),
            Container(
              height: 45.h(context),
              width: 347.w(context),
             decoration: BoxDecoration(
               color: offwhite,
               borderRadius: BorderRadius.circular(12)
             ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Row(

                      children: [
                        CustomText(
                            text: 'Germany',
                            fontWeight: FontWeight.w400,
                            colors: black,
                            fontsize: 16
                        ),
                     10.width(context),
                     Image(image: AssetImage('assets/images/flag.png'))
                      ],
                    ),

                    SvgPicture.asset("assets/images/dropdownarrow.svg"),
                  ],
                ),
              ),
            ),


              15.height(context),

              Container(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [

                      Container(
                        width: 90.w(context), // Set your desired width for the country code box
                        height: 60.h(context),
                        decoration: BoxDecoration(
                          color: Colors.grey[200], // Set your desired background color here
                          borderRadius: BorderRadius.circular(8.0), // Set the border radius here
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 16.0),
                        child: Center(
                          child: TextField(
                            controller: countryCodeController,
                            decoration: InputDecoration.collapsed(
                              hintText: '+92',

                            ),
                            keyboardType: TextInputType.phone,
                          ),
                        ),
                      ),
                      SizedBox(width: 8.0),

                      Expanded(
                        child: Container(
                           height: 49,
                          decoration: BoxDecoration(
                            color: Colors.grey[200], // Set your desired background color here
                            borderRadius: BorderRadius.circular(8.0), // Set the border radius here
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 16.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Center(
                                  child: TextField(
                                    controller: phoneNumberController,
                                    decoration: InputDecoration.collapsed(
                                      hintText: 'Phone Number',
                                        hintStyle: TextStyle(
                                            color: textfield_color,
                                        ),

                                    ),
                                    keyboardType: TextInputType.phone,
                                  ),

                                ),
                              ),

                             SvgPicture.asset('assets/images/add.svg'),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )

              ),

              20.height(context),

              GestureDetector(
                  onTap: (){
                    Navigator.pushNamed(context, RouterHelper.otp_screen);
                  },
                child: BlackButton(
                  butontxt: 'Continue',
                  color: black,
                  svgAssetPath: '',

                ),
              ),
            ]
          ),
        ),
    );
  }
}






