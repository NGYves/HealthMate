import 'package:flutter/material.dart';
import 'package:healthapp/Menu/Calendar.dart';
import 'package:healthapp/Menu/Parameter.dart';
import 'package:healthapp/Menu/Rappel.dart';
import 'package:healthapp/Needs/widSvg.dart';
import 'package:healthapp/On_Profile/On_Profile_3.dart';
import 'package:shared_preferences/shared_preferences.dart';


// ignore: camel_case_types
class page5 extends StatefulWidget {
  const page5({super.key});

  @override
  State<page5> createState() => _page5State();
}

class _page5State extends State<page5> {

 late SharedPreferences _prefs;
  late int periodLength;
  late int cycleLength;

  @override
  void initState() {
    super.initState();
    _initPrefs();
  }

  _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      periodLength = _prefs.getInt('periodLength') ?? 0;
      cycleLength = _prefs.getInt('cycleLength') ?? 0;
    });
  }


  @override
  Widget build(BuildContext context) {

    return Scaffold(
    backgroundColor: const  Color(0xFFEDA1BB),
    appBar: AppBar(leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
     onPressed: () {
      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  calcul(cycleLength: cycleLength, periodLength: periodLength,)),);
    },),backgroundColor: const  Color(0xFFEDA1BB)
        ),
    body: Container(
      decoration: const BoxDecoration(
        color: Color(0xffEDA1BB),
      ),
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.sizeOf(context).height  /100,
            left: MediaQuery.sizeOf(context).width * .40,
            child: const Text("Menu",style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  height: 33 / 30,
                  
                ),),),
                Positioned(
                  top: 52,
                  left:  MediaQuery.sizeOf(context).width * .10,
                  right:MediaQuery.sizeOf(context).width * .10,   
                  child: Container(
                      margin: const EdgeInsets.only(top: 2),
                      width: MediaQuery.sizeOf(context).width - 100,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: .7,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Colors.white,
                          ),
                        ),
                      ),
                  )
                    ),
          Positioned(
            top: 75,
            child: Center(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                width: MediaQuery.sizeOf(context).width,
                height: 190,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.3),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
      onTap: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const page5()),);
      
        // Handle tap event for third child
      },
      child:  WidSvg(name: 'Rappels',onTap: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const page3()),);
      },
      ),
    ),
                    Container(
                      margin: const EdgeInsets.only(top: 2),
                      width: MediaQuery.sizeOf(context).width - 50,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: .7,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
      onTap: () {
        
      },
      child:  WidSvg(name: 'Paramètres',onTap: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => page4()),);
      },),
    ),
                    Container(
                      margin: const EdgeInsets.only(top: 2),
                      width: MediaQuery.sizeOf(context).width - 50,
                      decoration: const ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: .7,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    GestureDetector(
      onTap: () {
        // Handle tap event for third child
      },
      child:  WidSvg(name: 'Calendrier',onTap: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Calendrier()),);
      },),
    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}