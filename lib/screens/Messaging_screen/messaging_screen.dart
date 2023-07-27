import 'package:ellawell/CustomWidgets/custom_bottom_navigation_bar.dart';
import 'package:ellawell/CustomWidgets/sized_box_widgets.dart';
import 'package:ellawell/screens/Messaging_screen/components/chats_screen.dart';
import 'package:flutter/material.dart';
import '../../CustomWidgets/Custom_Text.dart';
import '../../CustomWidgets/custom_appbar.dart';
import '../../UTILS/colors.dart';




class MessagingScreen extends StatelessWidget {
  const MessagingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 100.h(context),
        child: SafeArea(
          child: Row(
            children: [
              145.width(context),
              Image(image: AssetImage('assets/images/ellavell-logo.png')),
              120.width(context) ,
              Container(
                  height: 20,
                  child: Image(image: AssetImage('assets/images/setttings.png', ))),
            ],
          ),
        ),
      ),

     body:DefaultTabController(
         length: 3,
         child:  Column(
           children: [

             Container(
               height: 95.h(context),
               width: 390.w(context),
               decoration: BoxDecoration(
                 // color: Colors.red,
                 image: DecorationImage(
                   image: AssetImage('assets/images/frames.png'),
                   fit: BoxFit.cover,
                 ),
               ),
               child: Stack(
                 children: [
                   Positioned(
                     top: 50,
                     child: Container(
                       height: 35.h(context),
                       width: 390.w(context),
                       color: Colors.black.withOpacity(0.5),

                       child: TabBar(
                         indicatorColor: Colors.white,
                         indicatorSize: TabBarIndicatorSize.label,
                         tabs: [
                        CustomText(
                            text: "CHATS",
                            fontWeight: FontWeight.w600,
                            colors: white,
                            fontsize: 16,
                        ),

                           CustomText(
                             text: "STORIES",
                             fontWeight: FontWeight.w600,
                             colors: white,
                             fontsize: 16,
                           ),


                           CustomText(
                             text: "CALLS",
                             fontWeight: FontWeight.w600,
                             colors: white,
                             fontsize: 16,
                           ),

                         ],
                       ),
                     ),
                   ),
                 ],
               ),
             ) ,


             Expanded(
               child: TabBarView(
                   children: [

                     ChatScreen(),
                   ]
               ),
             )
           ],
         ),
        ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your action here
          print('Floating Action Button Pressed');
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.blue, // Background color of the button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      bottomNavigationBar: CustomNavigationBar(),
    );
  }
}
