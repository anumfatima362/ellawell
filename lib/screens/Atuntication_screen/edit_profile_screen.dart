import 'package:ellawell/CustomWidgets/Custom_Text.dart';
import 'package:ellawell/CustomWidgets/sized_box_widgets.dart';
import 'package:ellawell/Helper/route_helper.dart';
import 'package:ellawell/UTILS/colors.dart';
import 'package:flutter/material.dart';


class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(

          appBar: AppBar(
              backgroundColor: Colors.transparent,
              elevation: 0,
              automaticallyImplyLeading: false,

              leading: GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back,color: black, size: 30,))
          ),

          body: Column(
            children: [

              Center(
                child: Container(
                  height: 165.h(context),
                  width: 156.w(context),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: blue,
                          width: 3
                      )
                  ),
                  child: CircleAvatar(
                    radius: 48,
                    backgroundColor: circular_avatar_color,
                    child: Icon(Icons.photo, color: darkgray,),
                  ),
                ),
              ),

              35.height(context),

              CustomText(
                  text: 'Choose your profile picture',
                  fontWeight: FontWeight.w400 ,
                  colors: black ,
                  fontsize:  15),

              15.height(context),

              Divider(
                color: textfield_color,
                height: 8,
              ),

              20.height(context),


                 TabBar(
                labelColor: blue,
                 unselectedLabelColor: black,
                 indicatorColor: blue,
                 dividerColor: white,
                  indicatorSize: TabBarIndicatorSize.label,

                  tabs: [

                  CustomText(
                      text: 'Your name',
                      fontWeight: FontWeight.w400,
                      colors: black,
                      fontsize: 14,
                  ),


                   CustomText(
                     text: 'Your username',
                     fontWeight: FontWeight.w400,
                     colors: black,
                     fontsize: 14,
                   ),
                 ]
               ),

               10.height(context) ,
                    Expanded(
                        child:  TabBarView(
                              children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Container(
                                      height: 10,
                                      decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.circular(12)
                                      ),
                                      child: TextField(
                                        decoration: InputDecoration(
                                          contentPadding: EdgeInsets.symmetric( horizontal: 10, vertical: 15),
                                          border: InputBorder.none,
                                           hintText:'Your name' ,
                                           hintStyle: TextStyle(
                                            fontSize: 14,
                                             fontWeight: FontWeight.w500,

                                          ),
                                      ),
                                       ),
                                    ),
                                  ),

                                Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    height: 10,
                                    decoration: BoxDecoration(
                                        color: offwhite,
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric( horizontal: 10, vertical: 15),
                                        border: InputBorder.none,
                                        hintText:'Your username' ,
                                        hintStyle: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,

                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                               ],
                               ),

                      ),


            Divider(),

             Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
               child: CustomText(
                text: 'Enter name and a username.This name is for the private level,the username is forthe cosmos level.',
                fontWeight: FontWeight.w500,
                colors: textcolor,
                fontsize: 14,
               textAlign: TextAlign.center,
            ),
            ),
            20.height(context),


            GestureDetector(
              onTap: (){
             Navigator.pushNamed(context, RouterHelper.home_screen);
              },
              child: Container(
                height: 45.h(context),
                width: 250.w(context),
                decoration: BoxDecoration(
                  color: blue,
                  borderRadius: BorderRadius.circular(12)
                ),
                child:  Center(
                  child: CustomText(
                  text: 'Finish',
                  fontWeight: FontWeight.w500,
                  colors: white,
                  fontsize: 20,
               ),
                ),
              ),
            ),

              Container(
                height: 190.h(context),
              ),
            ],
          ),
        ),
    );
  }
}
