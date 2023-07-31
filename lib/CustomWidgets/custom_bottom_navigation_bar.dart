import 'package:ellawell/screens/Atuntication_screen/edit_profile_screen.dart';
import 'package:ellawell/screens/Balance_screen/balance.dart';
import 'package:ellawell/screens/Messaging_screen/messaging_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../UTILS/colors.dart';
import '../screens/Home_Screen/home_screen.dart';
import '../../UTILS/images.dart';
import '../screens/Profile_Screen/profile_screen.dart';


class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  int currentindex = 0;
  int selectedindex = 0;



  @override
  Widget build(BuildContext context) {
    return  BottomNavigationBar(
            //BottomNavigationBarType.fixed. This ensures that the bottom navigation bar items have fixed widths and are equally distributed.
            // each item will take up an equal portion of the available space in the navigation bar, regardless of the label or icon size.
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedItemColor: black,
            unselectedItemColor: Colors.grey.shade800,
            currentIndex: currentindex,

            onTap:(index){
              setState(() {
                currentindex = index;
              });

              switch(index){
                case 0:
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                  break;

                case 1:
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  BalanceScreen()));
                  break;

                case 2:
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) =>  MessagingScreen()));
                  break;

                case 3:
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
                  break;
              }
            },
            items: [
              BottomNavigationBarItem(
                label: "",
                icon:SvgPicture.asset(Images.home,)

              ),


              BottomNavigationBarItem(
                label: "",
                icon:SvgPicture.asset(Images.wallet,)

              ),


              BottomNavigationBarItem(
                label: "",
                icon:SvgPicture.asset(Images.Email)

              ),


              BottomNavigationBarItem(
                label: "",
                 icon:SvgPicture.asset(Images.person)

              ),

           ]
          );
        }
}
