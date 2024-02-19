// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:healthapp/Autre/loading.dart';
import 'package:healthapp/Autre/naissance.dart';
import 'package:healthapp/Autre/sex.dart';
import 'package:healthapp/Autre/year.dart';
import 'package:healthapp/Menu/Calendar.dart';
import 'package:healthapp/Menu/Menu.dart';
import 'package:healthapp/Menu/Parameter.dart';
import 'package:healthapp/Menu/Rappel.dart';
import 'package:healthapp/Menu/TextRappel.dart';
import 'package:healthapp/Needs/paged_vertical_calendar.dart';
import 'package:healthapp/On_Profile/On_Profile_1.dart';
import 'package:healthapp/On_Profile/On_Profile_3.dart';
import 'package:healthapp/On_Profile/test.dart';
import 'package:healthapp/On_Profile/util/algortihme.dart';
import 'package:healthapp/Rappels/Fertility.dart';
import 'package:healthapp/Rappels/Period.dart';
import 'package:healthapp/Rappels/Ppm.dart';
import 'package:healthapp/Rappels/slide.dart';
import 'package:healthapp/On_Profile/On_Profile_4.dart';
import 'package:shared_preferences/shared_preferences.dart';




void main() {
  runApp(const MainApp());
  
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return     MaterialApp(
      
      home:Page1(),
      
    );       
  }

}