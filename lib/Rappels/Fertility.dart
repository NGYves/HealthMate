import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthapp/Menu/TextRappel.dart';
import 'package:healthapp/Needs/DropDownMenu.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';

class ferty extends StatefulWidget {
  const ferty({Key? key}) : super(key: key);

  @override
  State<ferty> createState() => _fertyState();
}

class _fertyState extends State<ferty> {
  int d1 = 0;
  int d2 = 0;
  int d3 = 0;
  TimeOfDay _time = const TimeOfDay(hour: 0, minute: 0);
  TimeOfDay _time2 = const TimeOfDay(hour: 0, minute: 0);
  TimeOfDay _time3 = const TimeOfDay(hour: 0, minute: 0);

  void _showTimePicker() {
    showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 0, minute: 0),
    ).then((time) {
      if (time != null) {
        setState(() {
          _time = time;
        });
      }
    });
  }

  void _showTimePicker2() {
    showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 0, minute: 0),
    ).then((time) {
      if (time != null) {
        setState(() {
          _time2 = time;
        });
      }
    });
  }

  void _showTimePicker3() {
    showTimePicker(
      context: context,
      initialTime: const TimeOfDay(hour: 0, minute: 0),
    ).then((time) {
      if (time != null) {
        setState(() {
          _time3 = time;
        });
      }
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
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xFFEDA1BB).withOpacity(0.1),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1100,
          child: Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * 0.53,
                left: MediaQuery.of(context).size.width * 0.3,
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: SvgPicture.asset(
                    'assets/2.svg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height / 100,
                left: MediaQuery.of(context).size.width * 0.33,
                child: const Text(
                  "Fertility Days",
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
                top: MediaQuery.of(context).size.height * 0.135,
                left: MediaQuery.of(context).size.width * 0.35,
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: SvgPicture.asset(
                    'assets/1.svg',
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              
              Positioned(
                top: 80,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    width: MediaQuery.of(context).size.width,
                    height: 260,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.3),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 25),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.bottomLeft,
                                  child: const Text(
                                    "Début de la période fertile",
                                    style: TextStyle(
                                      fontSize: 20,
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
                                  child: LiteRollingSwitch(
                                    value: true,
                                    width: 90,
                                    textOn: 'ON',
                                    textOff: 'OFF',
                                    colorOn: const Color(0xFFFC7FB6),
                                    colorOff: const Color(0xFFE769C3),
                                    iconOn: Icons.circle_sharp,
                                    iconOff: Icons.circle_sharp,
                                    animationDuration:
                                        const Duration(milliseconds: 5),
                                    onChanged: (bool state) {
                                      print('turned ${(state) ? 'on' : 'off'}');
                                    },
                                    onDoubleTap: () {},
                                    onSwipe: () {},
                                    onTap: () {},
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: MediaQuery.of(context).size.width - 50,
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
                        Container(
                          height: 50,
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 3,
                                child: Text(
                                  "Me rappeller",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: SizedBox(
                                  height: 44,
                                  width: 140,
                                  child: DecoratedBox(
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFFC7FB6),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: classmenu(
                                      onItemSelected: (int index) {
                                        d1 = index;
                                        print('Selected index: $d1');
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 2),
                          width: MediaQuery.of(context).size.width - 50,
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
                        Container(
                          height: 50,
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 3,
                                child: Text(
                                  "Heure",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: SizedBox(
                                  height: 44,
                                  width: 95,
                                  child: DecoratedBox(
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFFC7FB6),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        _showTimePicker();
                                      },
                                      child: Text(
                                        _time.format(context),
                                        style: const TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'roboto',
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 2,
                          ),
                          width: MediaQuery.of(context).size.width - 50,
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
                        Container(
                          margin: const EdgeInsets.only(
                            top: 8,
                          ),
                          height: 50,
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 200),
                                child: const Text(
                                  "Texte de rappel",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 20,
                                width: MediaQuery.of(context).size.width,
                                child: ReplaceableTextWidget(initialText: "Prépares-toi ! Ta période fertile va commencer.")
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 400,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    width: MediaQuery.of(context).size.width,
                    height: 260,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.3),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 25),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.bottomLeft,
                                  child: const Text(
                                    "Jour d'ovulation",
                                    style: TextStyle(
                                      fontSize: 20,
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
                                  child: LiteRollingSwitch(
                                    value: true,
                                    width: 90,
                                    textOn: 'ON',
                                    textOff: 'OFF',
                                    colorOn: const Color(0xFFFC7FB6),
                                    colorOff: const Color(0xFFE769C3),
                                    iconOn: Icons.circle_sharp,
                                    iconOff: Icons.circle_sharp,
                                    animationDuration:
                                        const Duration(milliseconds: 5),
                                    onChanged: (bool state) {
                                      print('turned ${(state) ? 'on' : 'off'}');
                                    },
                                    onDoubleTap: () {},
                                    onSwipe: () {},
                                    onTap: () {},
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: MediaQuery.of(context).size.width - 50,
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
                        Container(
                          height: 50,
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 3,
                                child: Text(
                                  "Me rappeller",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: SizedBox(
                                  height: 44,
                                  width: 140,
                                  child: DecoratedBox(
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFFC7FB6),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: classmenu(
                                      onItemSelected: (int index1) {
                                        d2 = index1;
                                        print('Selected index: $d2');
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 2),
                          width: MediaQuery.of(context).size.width - 50,
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
                        Container(
                          height: 50,
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 3,
                                child: Text(
                                  "Heure",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: SizedBox(
                                  height: 44,
                                  width: 95,
                                  child: DecoratedBox(
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFFC7FB6),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        _showTimePicker2();
                                      },
                                      child: Text(
                                        _time2.format(context),
                                        style: const TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'roboto',
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 2),
                          width: MediaQuery.of(context).size.width - 50,
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
                        Container(
                          margin: const EdgeInsets.only(
                            top: 8,
                          ),
                          height: 50,
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 200),
                                child: const Text(
                                  "Texte de rappel",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 20,
                                width: MediaQuery.of(context).size.width,
                               child: ReplaceableTextWidget(initialText: "Il est probable que vous ovulez demain.")
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 700,
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 35),
                    width: MediaQuery.of(context).size.width,
                    height: 260,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(.3),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 25),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  alignment: Alignment.bottomLeft,
                                  child: const Text(
                                    "fin de la période fertile",
                                    style: TextStyle(
                                      fontSize: 20,
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
                                  child: LiteRollingSwitch(
                                    value: true,
                                    width: 90,
                                    textOn: 'ON',
                                    textOff: 'OFF',
                                    colorOn: const Color(0xFFFC7FB6),
                                    colorOff: const Color(0xFFE769C3),
                                    iconOn: Icons.circle_sharp,
                                    iconOff: Icons.circle_sharp,
                                    animationDuration:
                                        const Duration(milliseconds: 5),
                                    onChanged: (bool state) {
                                      print('turned ${(state) ? 'on' : 'off'}');
                                    },
                                    onDoubleTap: () {},
                                    onSwipe: () {},
                                    onTap: () {},
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: MediaQuery.of(context).size.width - 50,
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
                        Container(
                          height: 50,
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 3,
                                child: Text(
                                  "Me rappeller",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: SizedBox(
                                  height: 44,
                                  width: 140,
                                  child: DecoratedBox(
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFFC7FB6),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child:classmenu(
                                      onItemSelected: (int index2) {
                                        d3 = index2;
                                        print('Selected index: $d3');
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 2),
                          width: MediaQuery.of(context).size.width - 50,
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
                        Container(
                          height: 50,
                          child: Row(
                            children: [
                              const Expanded(
                                flex: 3,
                                child: Text(
                                  "Heure",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.w700,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: SizedBox(
                                  height: 44,
                                  width: 95,
                                  child: DecoratedBox(
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFFC7FB6),
                                      shape: BoxShape.rectangle,
                                    ),
                                    child: GestureDetector(
                                      onTap: () {
                                        _showTimePicker3();
                                      },
                                      child: Text(
                                        _time3.format(context),
                                        style: const TextStyle(
                                          fontSize: 25,
                                          fontFamily: 'roboto',
                                          fontWeight: FontWeight.w900,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(
                            top: 2,
                          ),
                          width: MediaQuery.of(context).size.width - 50,
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
                        Container(
                          margin: const EdgeInsets.only(
                            top: 8,
                          ),
                          height: 50,
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(right: 200),
                                child: const Text(
                                  "Texte de rappel",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'roboto',
                                    fontWeight: FontWeight.w900,
                                    color: Colors.white,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              Container(
                                alignment: Alignment.centerLeft,
                                height: 20,
                                width: MediaQuery.of(context).size.width,
                                child:ReplaceableTextWidget(initialText:"Ta période fertile est terminée.." ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClassMenu extends StatefulWidget {
  final ValueChanged<int> onItemSelected;

  const ClassMenu({Key? key, required this.onItemSelected}) : super(key: key);

  @override
  _ClassMenuState createState() => _ClassMenuState();
}

class _ClassMenuState extends State<ClassMenu> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 0;
              });
              widget.onItemSelected(selectedIndex);
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: selectedIndex == 0 ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  '1',
                  style: TextStyle(
                    color: selectedIndex == 0 ? Colors.black : Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 1;
              });
              widget.onItemSelected(selectedIndex);
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: selectedIndex == 1 ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  '2',
                  style: TextStyle(
                    color: selectedIndex == 1 ? Colors.black : Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = 2;
              });
              widget.onItemSelected(selectedIndex);
            },
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: selectedIndex == 2 ? Colors.white : Colors.transparent,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  '3',
                  style: TextStyle(
                    color: selectedIndex == 2 ? Colors.black : Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
