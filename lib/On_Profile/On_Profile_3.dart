
import 'package:flutter/material.dart';
import 'package:healthapp/Menu/Menu.dart';
import 'package:healthapp/On_Profile/On_Profile_1.dart';
import 'package:healthapp/On_Profile/On_Profile_4.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

// ignore: must_be_immutable
class calcul extends StatefulWidget {
   calcul({super.key, required this.cycleLength, required this.periodLength});

  final int periodLength;
  final int cycleLength;

 

  @override
  State<calcul> createState() => _calculState();
}
 
int Ovul =0;


 int volume = 0;
  bool liked = false;
class _calculState extends State<calcul> {
  
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
      periodLength = widget.periodLength;
      cycleLength = widget.cycleLength;
    });
    _saveValues();
  }

  _saveValues() {
    _prefs.setInt('periodLength', periodLength);
    _prefs.setInt('cycleLength', cycleLength);
  }


  @override
  Widget build(BuildContext context) {
    

    int daysUntilOvulation = calculateDaysUntilNextOvulation(widget.cycleLength, widget.periodLength);
    int actualCycleDay = calculateCycleDay(widget.cycleLength, widget.periodLength);

     return WillPopScope(
     onWillPop: () async {
        // Handle back button press
        return _handleBackButton(context);
      },

     child:
     Scaffold(
backgroundColor: const  Color(0xFFEDA1BB),
    appBar: AppBar(leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
    onPressed: () {
      Navigator.pop(context);
    },),backgroundColor: const  Color(0xFFEDA1BB)
        ),

        body: SingleChildScrollView(
          child
          :
        
        Stack(
          children: [
            Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          
                           Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const page5(),
                          ),
                        );
                        },
                      child:
                      Container(
                        alignment: Alignment.topRight,
                        margin: const EdgeInsets.only(right: 20),

                          child: const Icon(Icons.menu)
                            ),
                        )
                    ),
               
                  ]
            ),

            Container(
                 margin: EdgeInsets.only(top: 65,left: 12),
              child: const Image(image: AssetImage("assets/Ellipse 11.png")),
            ),
     
  Container(
                 margin: const EdgeInsets.only(top: 90,left: 40),
              child: const Image(image: AssetImage("assets/Ellipse 12.png")),
            ),
/////////////////////////////
////////////////////////////
Positioned(
       top: 300,
       left: 100,
    child:
 ElevatedButton(
      onPressed: () {
        _resetPage1();
        _resetPage2;
        
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Page1()),);
      },
      style: ElevatedButton.styleFrom(
        
        primary: Colors.pink.shade600,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        shadowColor: Colors.black,
    elevation: 20,
        minimumSize: const Size(220, 35),
      ),
      
      child:  const Text('Enregistrer Vos règles',style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  height: 33 / 30,
                  
                ),),
)),
//////////////////////////////
///Blue balls alignement
/////////////////////////////
 Positioned(
  top: MediaQuery.of(context).size.height * (396/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (126 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 18.png")),
),
Positioned(
  top: MediaQuery.of(context).size.height * (412/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (188 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 18.png")),
),


  Positioned(
  top: MediaQuery.of(context).size.height * (405/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (247 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 18.png")),
),

  
  Positioned(
  top: MediaQuery.of(context).size.height * (380/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (296 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 18.png")),
),



  Positioned(
  top: MediaQuery.of(context).size.height * (350/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (335 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 18.png")),
),

  Positioned(
  top: MediaQuery.of(context).size.height * (315/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (360 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 18.png")),
),
///////////////////////////
//////////////////////////   
///Red balls alignment
//////////////////////////
 Positioned(
  top: MediaQuery.of(context).size.height * (270/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (375 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 6.png")),
),

  Positioned(
  top: MediaQuery.of(context).size.height * (210/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (370 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 6.png")),
),

Positioned(
  top: MediaQuery.of(context).size.height * (140/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (342 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 6.png")),
),

  Positioned(
  top: MediaQuery.of(context).size.height * (90/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (278 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 6.png")),
),

  Positioned(
  top: MediaQuery.of(context).size.height * (70/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (216 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 6.png")),
),

  Positioned(
  top: MediaQuery.of(context).size.height * (75/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (133 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 6.png")),
),
//////////////////////////
/////////////////////////
///Yellow balls alignment
////////////////////////
///
  Positioned(
  top: MediaQuery.of(context).size.height * (353/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (60 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 17.png")),
),
   Positioned(
  top: MediaQuery.of(context).size.height * (309/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (27/ MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 17.png")),
),
   Positioned(
  top: MediaQuery.of(context).size.height * (255/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (20 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 17.png")),
),
   Positioned(
  top: MediaQuery.of(context).size.height * (201/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (21 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 17.png")),
),
   Positioned(
  top: MediaQuery.of(context).size.height * (150/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (40 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 17.png")),
),
    Positioned(
  top: MediaQuery.of(context).size.height * (102/ MediaQuery.of(context).size.height),
  left: MediaQuery.of(context).size.width * (75 / MediaQuery.of(context).size.width),
  child: Image(image: AssetImage("assets/Ellipse 17.png")),
),
  Positioned(
    top: 100,
    left: 39,
    
    child: Transform.rotate(angle: -0.8,
    child:  Text("PPM",style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w900,
                  color: Colors.yellow.shade200,
                  height: 33 / 30,
                  
                ),),
    
    )),
    Positioned(
    top: 100,
    left: 330,
    
    child: Transform.rotate(angle: 0.8,
    child: const Text("Règles",style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                  height: 33 / 30,
                  
                ),),
    
    )),
    Positioned(
    top: 390,
    left: 325,
    
    child: Transform.rotate(angle: -0.8168141,
    child: Text("fertilité",style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w900,
                  color: Colors.blue.shade100,
                  height: 33 / 30,
                  
                ),),
    
    )),

Container(
  margin: const EdgeInsets.only(top:500),
  child:  Column(
    children: [
      Row(
        children : [
      Expanded(
        flex: 1,
        child: 
        Container(
          margin: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        child:
        ImageIcon(
          AssetImage('assets/Ellipse 6.png'),
          color: Colors.red,
          
          ))
     
      ),
       Expanded(
        flex: 6,
        child: 
        Container(
          margin: EdgeInsets.only(right: 200),
          alignment: Alignment.centerLeft,
        child:
        const Text("Règles",style: TextStyle(color: Colors.white,fontFamily: 'Roboto',fontSize: 18,fontWeight: FontWeight.w900))
        )
     
      )

    ]),

Row(
        children : [
      Expanded(
        flex: 1,
        child: 
        Container(
          margin: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        child:
        const ImageIcon(
          AssetImage('assets/Ellipse 6.png'),
          color: Colors.yellow,
          
          ))
     
      ),
       Expanded(
        flex: 6,
        child: 
        Container(
          margin: const EdgeInsets.only(right: 150),
          alignment: Alignment.centerLeft,
        child:
        const Text("période Pré Menstruelle",style: TextStyle(color: Colors.white,fontFamily: 'Roboto',fontSize: 18,fontWeight: FontWeight.w700))
        )
     
      )

    ]),

Row(
        children : [
      Expanded(
        flex: 1,
        child: 
        Container(
          margin: const EdgeInsets.only(left: 20),
        alignment: Alignment.centerLeft,
        child:
         ImageIcon(
        const  AssetImage('assets/Ellipse 6.png'),
          color: Colors.blue.shade100,
          
          ))
     
      ),
       Expanded(
        flex: 6,
        child: 
        Container(
          margin: const EdgeInsets.only(right: 150),
          alignment: Alignment.centerLeft,
        child:
        const Text("fertilité",style: TextStyle(color: Colors.white,fontFamily: 'Roboto',fontSize: 18,fontWeight: FontWeight.w900),)
        )
     
      )

    ]),



  Container(
              margin: const EdgeInsets.only(top: 60),
              
              
             
              child: Center(
    child: ElevatedButton(
      onPressed: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const reg2()),);
      },
      style: ElevatedButton.styleFrom(
        
        primary:const  Color(0xFFE769C3),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        shadowColor: Colors.black,
    elevation: 20,
        minimumSize: const Size(350, 55),
      ),
      
      child:  
      const Text('Enregistrer Vos Symptômes',style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Urbanist',
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  
                  
                ),
    ),
              )),
             )
   
    ],
  ),
),
Positioned(
  top: 200,
  left: 120,

  
 child: Column(
         children: [
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children : [
          Text("Ovulation Dans $daysUntilOvulation jours",style: const TextStyle(fontFamily: 'Roboto',fontSize: 15,fontWeight: FontWeight.w900,color: Colors.white),),
          Text(DateFormat('dd MMMM').format(DateTime.now()),style: const TextStyle(fontFamily: 'Roboto',fontSize: 26,fontWeight: FontWeight.w900,color: Colors.white),),
          Text("Jour $actualCycleDay du cycle",style: const TextStyle(fontFamily: 'Roboto',fontSize: 15,fontWeight: FontWeight.w900,color: Colors.white),),
              ]
            )
          )
         
         
         
         ],
      ),
  
  )
          ]
        )),
      ) );

  }
  
int calculateDaysUntilNextOvulation(int cycleLength, int periodLength) {
  DateTime today = DateTime.now();
  int currentMonth = today.month;
  int currentYear = today.year;
  DateTime ovulationDate =
      DateTime(currentYear, currentMonth, cycleLength - periodLength);

  if (ovulationDate.isBefore(today)) {
    currentMonth++;
    if (currentMonth > 12) {
      currentMonth = 1;
      currentYear++;
    }
    ovulationDate = DateTime(currentYear, currentMonth, cycleLength - periodLength);
  }

  return ovulationDate.difference(today).inDays;
}

 void _resetPage1() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('page1_already_shown');
  }
   void _resetPage2(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('page2_already_shown');
     // Navigate back to previous page
  }
  Future<bool> _handleBackButton(BuildContext context) async {
    // Do not exit the app or go back to the previous page
    return false;
  }

}

int calculateCycleDay(int cycleLength, int periodLength) {
  DateTime today = DateTime.now();
  DateTime startDate = today.subtract(Duration(days: periodLength));
  DateTime endDate = today.add(Duration(days: cycleLength - periodLength));

  if (today.isBefore(startDate)) {
    // Before the cycle start date
    return 0;
  } else if (today.isAfter(endDate)) {
    // After the cycle end date
    return cycleLength;
  } else {
    // Within the cycle period
    return today.difference(startDate).inDays + 1;
  }
}