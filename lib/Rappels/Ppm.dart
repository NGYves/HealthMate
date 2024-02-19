import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthapp/Menu/TextRappel.dart';
import 'package:healthapp/Needs/DropDownMenu.dart';
import 'package:lite_rolling_switch/lite_rolling_switch.dart';


class Page8 extends StatefulWidget {
  const Page8({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _page8 createState() => _page8();
}

// ignore: camel_case_types
class _page8 extends State<StatefulWidget> 
{
  ///////////////////
  ///
  //////////////////
  int d = 0;
  TimeOfDay _time = const  TimeOfDay(hour: 00, minute: 00);
  void _showTimePicker3() {
    showTimePicker(
      context: context,
      initialTime: _time,
    ).then((time) {
      if (time != null) {
        setState(() {
          _time = time;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold (
    backgroundColor: const  Color(0xFFEDA1BB),
    appBar: AppBar(leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
    onPressed: () {
      Navigator.pop(context);
    },),backgroundColor: const  Color(0xFFEDA1BB)
        ),
       
     body: Container(
      decoration: const BoxDecoration(
        color: Color(0xffEDA1BB),
        
        
      ),
      child: Stack(
        children: [
          Positioned(
            top: MediaQuery.sizeOf(context).height / 100,
            left: MediaQuery.sizeOf(context).width * .20,
            child: const Text("Période Pré Menstruelle",style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  height: 33 / 30,
                  
                ),),),
        
          Positioned(
            top: MediaQuery.sizeOf(context).height * .135,
            left: MediaQuery.sizeOf(context).width * .35,
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
                width: MediaQuery.sizeOf(context).width,
                height: 300,
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
                               
                               child: const Text("Début de la PPM",style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  // height: 33 / 30,
                  
                ),),
                            )),
                            Expanded(
                              flex: 1,
                              child: Container(
                                alignment: Alignment.bottomRight,
                                child: 
                                LiteRollingSwitch(
                value: true,
                width: 90,
                
                textOn: 'ON',
                textOff: 'OFF',
                colorOn: const Color(0xFFFC7FB6),
                colorOff: const Color(0xFFE769C3),
                iconOn: Icons.circle,
                iconOff: Icons.circle_sharp,
                
                animationDuration: const Duration(milliseconds: 5),
                onChanged: (bool state) {
                //on recupere a chaque fois la valeur du trigger de la base des donnees 
                  print('turned ${(state) ? 'on' : 'off'}');
                  //recuperation
                },
                onDoubleTap: () {},
                onSwipe: () {},
                onTap: () {
                  
                },
              ),
                              ))

                        ],
                      ),
                    ),


                    Container(
                      margin: const EdgeInsets.only(top: 10),
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
                    // ignore: sized_box_for_whitespace
                    Container(
                      height: 50,
                      child:   Row(
                        children: [
                          const Expanded(
                            
                            flex : 3,
                            child: Text("Me rappeller",style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  // height: 33 / 30,
                  
                ),)),
                
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    
                    child: DecoratedBox(decoration: const BoxDecoration(
                      color: Color(0xFFFC7FB6),
                      
                      shape: BoxShape.rectangle,
                    ),
                    child: classmenu(
                      onItemSelected: (int index) {
                        d = index;
    print('Selected index: $d');
    // Do something with the selected index
  },
                    )
                    
                  )))

                        ],
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
                    Container(
                    height: 50,
                    child:  Row(
                      children: [
                        const Expanded(
                          flex: 3,
                          child:  Text("Heure",style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                  // height: 33 / 30,
                  
                ),),),
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 44,
                    width: 95,
                    child: DecoratedBox(decoration: const BoxDecoration(
                      color: Color(0xFFFC7FB6),
                      shape: BoxShape.rectangle,
                    ),
                    child: GestureDetector(
                    onTap : () {_showTimePicker3();
                    },
                    
                    child:
                  Text( _time.format(context),style: const TextStyle(
                  fontSize: 25,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  // height: 33 / 30,
                
               ),),),
                    
                  )))
                      ],
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
                    Container(
                      margin: const EdgeInsets.only(top: 8,),
                      
                      height: 50,
                      child:  Column(
                        
                        children: [
                          
                          Container(
                             margin: const EdgeInsets.only(right: 200),
                              
                          child: const Text("Texte de rappel",style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  // height: 33 / 30,
                ),textAlign: TextAlign.left,),),
               
                Container(
                  alignment: Alignment.centerLeft,
                  //  margin: const EdgeInsets.only(left: 10),
                  height: 20,
                  width: MediaQuery.sizeOf(context).width,
                   child: 
                    ReplaceableTextWidget(initialText: "vous ressentez des changements dans vôtre corps?\n Vôtre PPM va commencer.")
                ),
                
                
                ])),
                   




                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height * .53,
            left: MediaQuery.sizeOf(context).width * .5,
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
    )
    );
  }
  
}
















