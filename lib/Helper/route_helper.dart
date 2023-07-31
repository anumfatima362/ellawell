import 'package:ellawell/screens/Atuntication_screen/Sign_In_screen.dart';
import 'package:ellawell/screens/Atuntication_screen/otp_screen.dart';
import 'package:ellawell/screens/Atuntication_screen/policy_screen.dart';
import 'package:ellawell/screens/Atuntication_screen/edit_profile_screen.dart';
import 'package:ellawell/screens/Atuntication_screen/registration_with_phoneno.dart';
import 'package:ellawell/screens/Balance_screen/balance.dart';
import 'package:ellawell/screens/Conversation_Screen(chat)/conversation_screen.dart';
import 'package:ellawell/screens/Home_Screen/home_screen.dart';
import 'package:ellawell/screens/Messaging_screen/messaging_screen.dart';
import 'package:flutter/cupertino.dart';
import '../screens/Profile_Screen/profile_screen.dart';
import '../screens/Splash_Screen/splash_screen.dart';




  class RouterHelper{
   static const initial = "/";
   static const signInscreen = "/signInscreen";
   static const signup_with_phoneno = "/signup_with_phone";
   static const otp_screen = "/otp_screen";
   static const policy_screen = "/policy_screen";
   static const edit_profile_screen = "/edit_profileScreen";
   static const home_screen = "/homescreen";
   static const messaging_screen = "/messagingscreen";
   static const balance_screen = "/balancescreen";
   static const profilescreen = "/profilescreen";
   static const conversationscreen = "/conversation_screen";









   static Map<String, Widget Function(BuildContext context)> routes  =  {
     initial: (context) => const SplashScreen(),
    signInscreen : (context) => const SignIn(),
     signup_with_phoneno : (context) => const PhoneSignup(),
     otp_screen: (context) => const OtpScreen(),
     policy_screen: (context) => const PolicyScreen(),
      edit_profile_screen: (context) => const EditProfile(),
      home_screen: (context) => const HomeScreen(),
      messaging_screen: (context) =>  MessagingScreen(),
      balance_screen: (context) => const BalanceScreen(),
      profilescreen: (context) => const ProfileScreen(),
      conversationscreen: (context) => const ConversationScreen(),









   };
}