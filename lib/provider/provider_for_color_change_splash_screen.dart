import 'package:flutter/foundation.dart';


class ColorChanger with ChangeNotifier{

  bool isClicked = false ;

  void setColorChanger (){
    
    isClicked = true;
    notifyListeners();
  }
}