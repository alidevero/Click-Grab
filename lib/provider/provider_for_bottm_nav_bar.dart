import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


class BottomNavBarSetter with ChangeNotifier{

  var bottomNavBarIndex = 0;

  void bottomNavBarIndexSetter (index){

    bottomNavBarIndex = index;
    notifyListeners();
  }


}