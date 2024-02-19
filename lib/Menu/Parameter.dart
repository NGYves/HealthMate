import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthapp/Menu/Menu.dart';
import 'package:healthapp/Menu/Rappel.dart';
import 'package:shared_preferences/shared_preferences.dart';


// ignore: must_be_immutable
class page4 extends StatefulWidget {
   page4({Key? key}) : super(key: key);
 
  @override
  _page4 createState() => _page4();
}

bool notif = false;
bool notif1 = false;

class _page4 extends State<page4> {
  bool isTapped = false;
  bool isTapped1 = false;

late SharedPreferences _prefs;
  late int periodLength = 1;
  late int cycleLength = 1;

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
      backgroundColor: const Color(0xFFEDA1BB),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const page5()),
            );
          },
        ),
        backgroundColor: const Color(0xFFEDA1BB),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xffEDA1BB),
        ),
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height / 100,
              left: MediaQuery.of(context).size.width * .30,
              right: MediaQuery.of(context).size.width * .30,
              child: const Text(
                "Paramètres",
                style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  height: 33 / 30,
                ),
              ),
            ),
            Positioned(
              top: 52,
              left: MediaQuery.of(context).size.width * .10,
              right: MediaQuery.of(context).size.width * .10,
              child: Container(
                margin: const EdgeInsets.only(top: 2),
                width: MediaQuery.of(context).size.width - 100,
                decoration: const ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: .7,
                     
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 10,
              child: Center(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .60,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.0),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 2),
                        child: const Text(
                          "Durée Du Cycle Menstruel",
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      IntrinsicWidth(
                        child: Container(
                          margin: const EdgeInsets.only(top: 15),
                          width: MediaQuery.of(context).size.width,
                          height: 51,
                          child:  SizedBox(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Color(0xA1FF4D9C),
                              ),
                              child: Center(
                                child:  Text(
                                    "$cycleLength",
                                    style: TextStyle(
                                      fontSize: 38,
                                      fontFamily: 'roboto',
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                      height: 33 / 30,
                                    ),
                                  ),
                                
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        child: const Text(
                          "Durée Des Règles",
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: 'roboto',
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      IntrinsicWidth(
                        child: Container(
                          margin: const EdgeInsets.only(top: 15),
                          width: MediaQuery.of(context).size.width,
                          height: 51,
                          child: SizedBox(
                            child: DecoratedBox(
                              decoration: const BoxDecoration(
                                color: Color(0xA1FF4D9C),
                              ),
                              child: Center(
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const page3(),
                                      ),
                                    );
                                  },
                                  child:  Text(
                                    "$periodLength",
                                    style: TextStyle(
                                      fontSize: 38,
                                      fontFamily: 'roboto',
                                      fontWeight: FontWeight.w800,
                                      color: Colors.white,
                                      height: 33 / 30,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 50),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.bottomLeft,
                                margin: const EdgeInsets.only(left: 8),
                                child: const ImageIcon(
                                  AssetImage("assets/Calendartoday.png"),
                                  color: Colors.white,
                                  size: 36,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                child: const Text(
                                  "notifications début des règles",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.bottomRight,
                                margin: const EdgeInsets.only(right: 8),
                                child: GestureDetector(
                                  child: ImageIcon(
                                    const AssetImage("assets/Frame66.png"),
                                    color: isTapped1
                                        ? Colors.pink
                                        : Colors.white,
                                    size: 36,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      isTapped1 = !isTapped1;
                                      if (notif1 == true) {
                                        notif1 = false;
                                        print(
                                            'Vous avez Desactiver les notification pour cette page');
                                      } else {
                                        notif1 = true;
                                        print(
                                            'Vous avez Activer les notification pour cette page');
                                      }
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 50),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.bottomLeft,
                                margin: const EdgeInsets.only(left: 8),
                                child: const ImageIcon(
                                  AssetImage("assets/InactiveState.png"),
                                  color: Colors.white,
                                  size: 36,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 4,
                              child: Container(
                                child: const Text(
                                  "notification jour de l’ovulation",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.bottomRight,
                                margin: const EdgeInsets.only(right: 8),
                                child: GestureDetector(
                                  child: ImageIcon(
                                    const AssetImage("assets/Frame66.png"),
                                    color:
                                        isTapped ? Colors.pink : Colors.white,
                                    size: 36,
                                  ),
                                  onTap: () {
                                    setState(() {
                                      isTapped = !isTapped;
                                      if (notif == true) {
                                        notif = false;
                                        print(
                                            'Vous avez Desactiver les notification pour cette page');
                                      } else {
                                        notif = true;
                                        print(
                                            'Vous avez Activer les notification pour cette page');
                                      }
                                    });
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * .53,
              left: MediaQuery.of(context).size.width * .5,
              child: SizedBox(
                width: 200,
                height: 200,
                child: SvgPicture.asset(
                  'assets/2.svg',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
