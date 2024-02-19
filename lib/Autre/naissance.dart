
import 'package:flutter/material.dart';
import 'package:healthapp/Autre/year.dart';

class annee extends StatefulWidget {
  const annee({super.key});

  @override
  State<annee> createState() => _anneeState();
}

class _anneeState extends State<annee> {
  int year= 0;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back, color: Colors.black26),
            onPressed: () {
             
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        backgroundColor: const Color(0xFFEDA1BB),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: SizedBox(
                width: screenWidth,
                height: screenHeight / 2,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(screenWidth * 0.5),
                      bottomRight: Radius.circular(screenWidth * 0.5),
                    ),
                    color: Colors.white,
                  ),
                  child: Container(
                    margin: EdgeInsets.only(top: 60),
                    child: const Column(
                      children: [
                         SizedBox(height: 100),
                    Image(image: AssetImage("assets/VOTRE ANNEE DE NAISSANCE.png")),
                        
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: screenWidth,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    
                  ),
                  child: Stack(
                    children: [
                      GestureDetector(
                        child: Part2PickerWrapper(onIndexChanged: (int y) {
                            setState(() {
                               
                              year = y+1900;
                              print('you selected $year');
                            });
                          },),
                        onDoubleTap: () {
                          
                        },
                       
                      ),
                     
                     
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      );
  }
}