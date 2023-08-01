import 'package:ellawell/Helper/Providers/Navigation_screen.dart';
import 'package:ellawell/Helper/route_helper.dart';
import 'package:ellawell/screens/Atuntication_screen/edit_profile_screen.dart';
import 'package:ellawell/screens/Balance_screen/balance.dart';
import 'package:ellawell/screens/Messaging_screen/messaging_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
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

  @override
  Widget build(BuildContext context) {
    return    Consumer<NavigationBarProvider>(
      builder: (context, controller, child){

        return  BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              selectedItemColor: Colors.blue,
              unselectedItemColor: Colors.red,
             currentIndex: controller.currentindex,


            onTap:(index){

             controller.selectedindex(index);

              switch(index){
                case 0:
                  Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) => HomeScreen(),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
                 // Navigator.of(context).pushNamedAndRemoveUntil(RouterHelper.home_screen, (route) => false);
                  break;

                case 1:
                  Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => BalanceScreen(),
                        transitionDuration: Duration.zero,
                        reverseTransitionDuration: Duration.zero,
                      )
                      );
                  break;

                case 2:
                  Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation1, animation2) => MessagingScreen(),
                        transitionDuration: Duration.zero,
                        reverseTransitionDuration: Duration.zero,
                      ),
                  );
                  break;

                case 3:
                  Navigator.pushReplacement(
                      context,
                      PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) => ProfileScreen(),
              transitionDuration: Duration.zero,
              reverseTransitionDuration: Duration.zero,
                  ),
                  );

                  break;
              }
            },
            items:  <BottomNavigationBarItem> [
              BottomNavigationBarItem(
                  label: "",
                  icon:SvgPicture.asset( controller.currentindex ==0 ?Images.colored_background_home : Images.home )
                  ),


              BottomNavigationBarItem(
                  label: "",
                  icon:SvgPicture.asset(controller.currentindex ==1 ? Images.colored_wallet :Images.wallet,)

              ),


              BottomNavigationBarItem(
                  label: "",
                  icon:SvgPicture.asset(controller.currentindex == 2 ? Images.colored_email : Images.Email),

              ),


              BottomNavigationBarItem(
                  label: "",
                  icon:SvgPicture.asset(controller.currentindex== 3 ? Images.colored_profile : Images.person),


              ),

      ]
        ) ;
      }
    );
        }
}
