import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:healthapp/On_Profile/On_Profile_2.dart';
import 'package:healthapp/On_Profile/util/list_profile1.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  late SharedPreferences _prefs;
  late int periodLength = 0;
  late int cycleLength= 0;

  

  _initPrefs() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      periodLength = _prefs.getInt('periodLength') ?? 0;
      cycleLength = _prefs.getInt('cycleLength') ?? 0;
    });
  }
  int CL = 0;
  bool _pageAlreadyShown = false;

  @override
  void initState() {
    super.initState();
    _checkPageAlreadyShown();
    _initPrefs();
  }

  Future<void> _checkPageAlreadyShown() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool pageAlreadyShown = prefs.getBool('page1_already_shown') ?? false;
    setState(() {
      _pageAlreadyShown = pageAlreadyShown;
    });
  }

  Future<void> _setPageAlreadyShown() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('page1_already_shown', true);
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    if (_pageAlreadyShown) {
      
      // If the page has already been shown, you can navigate back to the previous page.
      
      return Page2(cycleLength: cycleLength);
      
    } else {
      // If the page has not been shown yet, show the page and set the flag to indicate it has been shown.
      _setPageAlreadyShown();
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
                  child: const Center(
                    child: Column(
                      children: [
                          SizedBox(height: 40,),
                    Image(image: AssetImage("assets/Quelle est la durée moyenne de votre cycle menstruelle.png")),
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
                    color: Colors.pink,
                  ),
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Page2(cycleLength: CL),
                            ),
                          );
                        },
                        child: Part2PickerWrapper(
                          onIndexChanged: (int cycleLength) {
                            setState(() {
                               _resetPage2(context);
                              CL = cycleLength + 1;
                              print('you selected $CL');
                            });
                          },
                        ),
                      ),
                      Positioned(
                        top: screenHeight * 0.21,
                        left: screenWidth * 0.55,
                        child: const Text(
                          "Jours",
                          style: TextStyle(
                            fontSize: 25,
                            fontFamily: 'Urbanist',
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                            height: 33 / 30,
                          ),
                        ),
                      ),
                      Positioned(
                        top: screenHeight * 0.23,
                        child: GestureDetector(
                          onDoubleTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Page2(cycleLength: CL)),
                            );
                          },
                          child: SizedBox(
                            height: 52,
                            width: screenWidth,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(217, 248, 99, 151).withOpacity(0.0),
                                shape: BoxShape.rectangle,
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
      );
    }
  }
   void _resetPage2(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('page2_already_shown');
     // Navigate back to previous page
  }
}
