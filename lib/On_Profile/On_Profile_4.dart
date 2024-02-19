import 'package:flutter/material.dart';
import 'package:healthapp/On_Profile/util/list1.dart';

class reg2 extends StatefulWidget {
  const reg2({super.key});

  @override
  State<reg2> createState() => _reg2State();
}

class _reg2State extends State<reg2> {
  final List<String> items = [
    
    "Calme",
    "Enjouee",
    "Tristesse",
    "Irritabilité",
    "Fatigue",
    "Anxiété",
    "Insomnie",

  ];
  final List<String> items1 = [
    
    "Rapports protégés",
    "Rapports non-protégés",
    "Insuffisance"
    "Rapports precause",
    
  ];
  final List<String> items2 = [
    
    "Maux de tête",
    "Fatigue",
    "Maux de ventre",
    "Saignement",
    
  ];
  final List<String> items3 = [
    
    "collantes",
    "crémeuse",

  ];
  final List<String> items4 = [
    
    "léger",
    "moyen",
    "elevee",

  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
backgroundColor: const  Color(0xFFEDA1BB),
    appBar: AppBar(leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
    onPressed: () {
      Navigator.pop(context);
    },),backgroundColor: const  Color(0xFFEDA1BB)
        ),


      body: Stack(
        children :
        [
      
      Column(
        children: [
           Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        alignment: Alignment.centerRight,
                        margin: const EdgeInsets.only(right: 20),

                        child: const Text("Today",style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.w700,
                  color: Colors.white,
                        )
                  ),
                      )),
                      
                  ],
                ),
                Row(
                  children: [
                    
                     Expanded(
                      
                      flex: 1,
                      child: Container( 
                        
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.only(left:25),

                        child: const Text("Symptômes",style: TextStyle(
                  fontSize: 26,
                  fontFamily: 'roboto',
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                        )
                  ),
                      ))
                  ],
                ),
                 SizedBox(
                  height: 35,
                  width: MediaQuery.sizeOf(context).width,
                ),
          Row(
            children: [
              const Expanded(
                flex: 1,
                child: Column(
                  children: [
                    ImageIcon(
                            AssetImage("assets/Vector1.png"),
                            color:Colors.white,
                          ),
                          Text("Humeur",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,fontFamily: 'Roboto',color: Colors.white),)
                                           ],

                ),
              ),
              SizedBox(width: 20,),
              Expanded(
                flex: 2,
                child:  HorizontalListView(items: items),
              )
            ],
          ),
SizedBox(
                  height: 35,
                  width: MediaQuery.sizeOf(context).width,
                ),
           Row(
            children: [
               Container(
                child: Column(
                  children: [
                    Container(
                      child:
                    const ImageIcon(
                            AssetImage("assets/image4.png"),
                            color:Colors.white,
                          ),),
                          const Text("Rapports Sexuels",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 15,fontFamily: 'Roboto',color: Colors.white),)
                                           ],

                ),
              ),
              const SizedBox(
                width: 25,
              ),
              Expanded(
                flex: 1,
                child:  HorizontalListView(items: items1),
              )
            ],
          ),
          SizedBox(
                  height: 35,
                  width: MediaQuery.sizeOf(context).width,
                ),
          Row(
            children: [
              const Expanded(
                flex: 1,
                child: Column(
                  children: [
                    ImageIcon(
AssetImage("assets/Group.png"),
color:Colors.white,
                          ),
                          Text("Symptômes",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,fontFamily: 'Roboto',color: Colors.white),)
                                           ],

                ),
              ),
                            SizedBox(width: 20,),

              Expanded(
                flex: 2,
                child:  HorizontalListView(items: items2),
              )
            ],
          ),
          SizedBox(
                  height: 35,
                  width: MediaQuery.sizeOf(context).width,
                ),
          Row(
            children: [
              const Expanded(
                flex: 1,
                child: Column(
                  children: [
                    ImageIcon(
                             AssetImage("assets/Water.png"),
                             color:Colors.white,
                          ),
                          Text("Ecoulement",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,fontFamily: 'Roboto',color: Colors.white),)
                                           ],

                ),
              ),
                            SizedBox(width: 20,),

              Expanded(
                flex: 2,
                child:  HorizontalListView(items: items3),
              )
            ],
          ),
          SizedBox(
                  height: 35,
                  width: MediaQuery.sizeOf(context).width,
                ),
          Row(
            children: [
               Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 40),
                      child :
                    const Row(
                      children : [
                    ImageIcon(
                            AssetImage("assets/Water.png"),
                            color:Colors.white,
                          ),
                           ImageIcon(
                            AssetImage("assets/Water.png"),
                            color:Colors.white,
                          ),
                    ],),),
 const Text("intensité de",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,fontFamily: 'Roboto',color: Colors.white),)
                          ,
                          const Text("l’écoulement",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,fontFamily: 'Roboto',color: Colors.white),)

                    ]

                ),
              ),
                            SizedBox(width: 20,),

              Expanded(
                flex: 2,
                child:  HorizontalListView(items: items4),
              )
            ],
          ),
          SizedBox(
                  height: 35,
                  width: MediaQuery.sizeOf(context).width,
                ),
           Row(
            children: [
              Container(
               margin: const EdgeInsets.only(left: 40),
                child: const Column(
                  children: [
                    ImageIcon(
                            AssetImage("assets/Vect.png"),
                            color:Colors.white,
                          ),
                          Text("notes",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20,fontFamily: 'Roboto',color: Colors.white),)
                                           ],

                ),
              ),
             
            ],
          )
        ],
      ),
      Positioned(
        top: 90,
        child:
      SizedBox(
                        height: 550,
                        width: 144,
                  child: DecoratedBox(decoration: BoxDecoration(
                          color: Colors.white.withOpacity(.0),
    border: Border.all(
      color: Colors.pink.shade700.withOpacity(0.2), // Change this to your desired border color
      width: 2, // Change this to your desired border width
    ),
                        ),      
                        
                        )
      ))
    ]));
  }
}