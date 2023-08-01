import 'package:ellawell/CustomWidgets/custom_bottom_navigation_bar.dart';
import 'package:ellawell/CustomWidgets/sized_box_widgets.dart';
import 'package:ellawell/screens/Messaging_screen/components/Stories.dart';
import 'package:ellawell/screens/Messaging_screen/components/chats_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:flutter_svg/svg.dart';
import '../../CustomWidgets/Custom_Text.dart';
import '../../CustomWidgets/custom_appbar.dart';
import '../../UTILS/colors.dart';
import '../../UTILS/images.dart';


class MessagingScreen extends StatefulWidget {
   MessagingScreen({Key? key}) : super(key: key);

  @override
  State<MessagingScreen> createState() => _MessagingScreenState();


}

class _MessagingScreenState extends State<MessagingScreen> with SingleTickerProviderStateMixin{
  late TabController tabController;
  int currentTabIndex = 0;



  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabController.addListener(() {
      setState(() {
        currentTabIndex = tabController.index;
      });
    });
  }


  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

    @override
    Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        height: 100.h(context),
        child: SafeArea(
          child: Row(
            children: [
              145.width(context),
              SvgPicture.asset(Images.elavell_logo),

              120.width(context) ,
              Container(
                  height: 20,

                  child:  SvgPicture.asset(Images.settings),
                 ),
            ],
          ),
        ),
      ),

     body:DefaultTabController(
         length: 3,
         child:  SingleChildScrollView(
           child: Column(
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
                           controller: tabController,
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

               10.height(context),

               Container(
                 height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                 child: TabBarView(
                    controller: tabController,
                     children: [
                       Container(
                           height:MediaQuery.of(context).size.height,
                           width: MediaQuery.of(context).size.width,
                           child: ChatScreen()),
                       StoriesScreen(),
                       StoriesScreen(),

                     ]
                 ),
               ),
             ],
           ),
         ),
        ),
       floatingActionButton: buildFloatingActionButton(),

      bottomNavigationBar: CustomNavigationBar(),
    );
  }
  Widget buildFloatingActionButton() {
    switch (currentTabIndex) {
      case 0:
        return SpeedDial(
          child: Icon(Icons.add),
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          tooltip: 'Speed Dial',
          childPadding: EdgeInsets.all(2.0),
          children: [
            SpeedDialChild(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                child: SvgPicture.asset(Images.typing),
             // label: 'Camera',
              onTap: (){}
            ),

            SpeedDialChild(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              child: SvgPicture.asset(Images.search,height: 28,),
             // label: 'Gallery',
              onTap: () {
                // Handle the gallery action here for Tab 1
              },
            ),
          ],
        );
      case 1:
        return FloatingActionButton(
          onPressed: () {},
          child:SvgPicture.asset(Images.Camera),
          backgroundColor: Colors.blue,

        );
      default:
        return FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.phone),
          backgroundColor: Colors.blue,

        );
    }
  }
}
