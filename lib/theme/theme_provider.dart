
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projecttask/theme/dark_mode.dart';
import 'package:projecttask/theme/light_mode.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = lightMode;

  ThemeData get themeData => _themeData;

  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData){
    _themeData = themeData;
    notifyListeners();
  }

  void toggleTheme(){

    if (_themeData == lightMode){
      themeData = darkMode;

    }else{
      themeData = lightMode;
    }
  }

}