import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:healthapp/Menu/Menu.dart';
import 'package:healthapp/Needs/widSvg.dart';
import 'package:healthapp/Rappels/Fertility.dart';
import 'package:healthapp/Rappels/Period.dart';
import 'package:healthapp/Rappels/Ppm.dart';


class page3 extends StatefulWidget {
  const page3({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _page3 createState() => _page3();
}

class _page3 extends State<StatefulWidget> 
{

  @override
  Widget build(BuildContext context) {
    return Scaffold (
    backgroundColor: const  Color(0xFFEDA1BB),
    appBar: AppBar(leading: IconButton(
    icon: const Icon(Icons.arrow_back_ios,color: Colors.white,),
    onPressed: () {
      Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const page5()),);
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
            left: MediaQuery.sizeOf(context).width * .33,
            child: const Text("Rappels",style: TextStyle(
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
                height: 190,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(.3),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
      onTap: () {
        // Handle tap event for third child
      },
      child:   WidSvg(name: 'Period',onTap: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const page6()),);
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
      
      child:  WidSvg(name: 'Fertility',onTap: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const ferty()),);
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
      child: WidSvg(name: 'Ppm',onTap: () {
        Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const Page8()),);
      },),
    ),
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