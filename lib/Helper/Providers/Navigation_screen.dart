import 'package:flutter/cupertino.dart';



class NavigationBarProvider extends ChangeNotifier{
    int currentindex = 0;


  selectedindex(int newindex){
    currentindex = newindex;
     notifyListeners();
  }





}