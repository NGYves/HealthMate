import 'package:flutter/material.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  double _progress = 0;

  @override
  void initState() {
    super.initState();
    // Start the loading progress
    _startLoadingProgress();
  }

  void _startLoadingProgress() {
    Future.delayed(Duration.zero, () {
      _simulateLoadingProgress();
    });
  }

   void _simulateLoadingProgress() {
    // Simulate loading progress
    Future.delayed(Duration(milliseconds: 100), () {
      setState(() {
        // Update progress until it reaches 100%
        if (_progress < 1) {
          _progress += 0.01;
          _simulateLoadingProgress();
        } else {
          // Navigate to the next page when loading is complete
          // Navigator.of(context).pushReplacement(
          //   MaterialPageRoute(
          //     builder: (context) => NextPage(),
          //   ),
          // );
        }
      });
    });
  }

  @override
Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: const Color(0xFFEDA1BB),
      body: Center(
        child: Stack(
          children: [
            Positioned.fill(
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  child: const Image(image: AssetImage("assets/Ellipse 249.png")),
                ),
              ),
            ),
            Positioned.fill(
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  child: const Image(image: AssetImage("assets/Ellipse 250.png")),
                ),
              ),
            ),
            Positioned.fill(
              child: Center(
                child: Container(
                  alignment: Alignment.center,
                  child:  Text(
              '${(_progress * 100).toStringAsFixed(0)}%',
              style: const TextStyle(fontSize: 30, fontFamily: 'Roboto', fontWeight: FontWeight.w600),
            ),
                ),
              ),
            ),
            Positioned.fill(
              top: MediaQuery.of(context).size.height * 0.8,
                child: Container(
                  alignment: Alignment.center,
                  child: const Column(
                    children : [
                  
                  
                    Text("Génération de votre cycle",style:  TextStyle(fontSize: 30, fontFamily: 'Roboto', fontWeight: FontWeight.w600),),
                    Text("menstruel...",style:  TextStyle(fontSize: 30, fontFamily: 'Roboto', fontWeight: FontWeight.w600),),

                    
                    ]
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }
  
}


