import 'package:ellawell/Helper/Providers/Navigation_screen.dart';
import 'package:provider/provider.dart';




class Providerhelper {
  static List<ChangeNotifierProvider> Provider =[

  ChangeNotifierProvider<NavigationBarProvider>(create: (context)=> NavigationBarProvider())
  ];

}