import 'package:flutter/material.dart';

class sex extends StatelessWidget {
  const sex({Key? key}) : super(key: key);

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
                    Image(image: AssetImage("assets/VOTRE SEXE.png")),
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
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFE769C3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        shadowColor: Colors.black,
                        elevation: 20,
                        minimumSize: const Size(316, 51),
                      ),
                      child: const Text(
                        'Femme',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          height: 33 / 30,
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: const Color(0xFFE769C3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        shadowColor: Colors.black,
                        elevation: 20,
                        minimumSize: const Size(316, 51),
                      ),
                      child: const Text(
                        'Homme',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          height: 33 / 30,
                        ),
                      ),
                    ),
                    SizedBox(height: 100),
                    Text(
                      "Passez directement à la page d’accueil",
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        height: 33 / 30,
                      ),
                    ),
                    SizedBox(height: 20),
                    const Image(image: AssetImage("assets/Frame 10.png")),
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
