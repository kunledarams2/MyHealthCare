

import 'dart:async';

import 'package:evendlaundary/utili/stringCall.dart';
import 'package:shared_preferences/shared_preferences.dart';


 class IO {

   static final String userName = "userName";
   static final String session = "session";




//   var call =  StringCall.instance;
   void setData(String key, String value) async {
     SharedPreferences pref = await SharedPreferences.getInstance();
     pref.setString(key, value);
  }
  Future<String> getData(String key) async{
     SharedPreferences preferences  = await SharedPreferences.getInstance();
      return preferences.getString(key);
  }

   void deleteData(String key) async {
     SharedPreferences preferences = await SharedPreferences.getInstance();
     preferences.remove(key);
   }
 }