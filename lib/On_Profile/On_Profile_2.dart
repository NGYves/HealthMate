import 'package:flutter/material.dart';
import 'package:healthapp/On_Profile/On_Profile_3.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Page2 extends StatefulWidget {
  final int cycleLength;

  const Page2({Key? key, required this.cycleLength}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  int? Pl;
bool _pageAlreadyShown = false;

  @override
  void initState() {
    super.initState();
    _checkPageAlreadyShown();
  }

  Future<void> _checkPageAlreadyShown() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool pageAlreadyShown = prefs.getBool('page2_already_shown') ?? false;
    setState(() {
      _pageAlreadyShown = pageAlreadyShown;
    });
  }

  Future<void> _setPageAlreadyShown() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('page2_already_shown', true);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    if (_pageAlreadyShown) {
      // If the page has already been shown, you can navigate back to the previous page.
      
      return calcul(cycleLength: widget.cycleLength, periodLength: 5);
      
    } else {
      // If the page has not been shown yet, show the page and set the flag to indicate it has been shown.
      _setPageAlreadyShown();
      return Scaffold(
  
      backgroundColor: const Color(0xFFEDA1BB),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xFFEDA1BB),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: screenWidth,
              height: screenHeight / 2,
              child: const DecoratedBox(
                decoration: BoxDecoration(),
                child: Image(image: AssetImage("assets/Ellipse25.png")),
              ),
            ),
            SizedBox(
              width: screenWidth,
              height: screenHeight / 2,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45),
                    topRight: Radius.circular(45),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                        width: 400,
                        child: Column(
                          children: [
                         Image(image: AssetImage("assets/Quel est le nombre moyen de jours de vôtre cycle_.png")),

                          ],
                        ),
                      ),
                      SizedBox(
                        height: 140,
                        width: screenWidth,
                        child: DecoratedBox(
                          decoration: const BoxDecoration(color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: ListView.builder(
                              itemCount: 31,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      Pl = index + 1;
                                      print("selected ${index + 1}");
                                    });
                                  },
                                  child: SizedBox(
                                    child: Center(
                                      child: Text(
                                        "${index + 1}",
                                        style: const TextStyle(
                                          fontSize: 42,
                                          fontFamily: 'Urbanist',
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          height: 33 / 30,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: 300,
                        color: Colors.white,
                        child: Center(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => calcul(
                                    periodLength: Pl ?? 0, // If Pl is null, use 0
                                    cycleLength: widget.cycleLength,
                                  ),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              primary: const Color(0xFFE769C3),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                              shadowColor: Colors.black,
                              elevation: 20,
                              minimumSize: const Size(330, 53),
                            ),
                            child: const Text(
                              'Continuer',
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Urbanist',
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                                height: 33 / 30,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
}