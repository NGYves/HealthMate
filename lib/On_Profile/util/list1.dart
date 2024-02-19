import 'package:flutter/material.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: list1(),
    );
  }
}

class list1 extends StatelessWidget {
  final List<String> items = [
    "Calme",
    "Enjouee",
    "Tristesse",
    "Irritabilité",
    "Fatigue",
    "Anxiété",
    "Insomnie",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Horizontal ListView Example'),
      ),
      body: HorizontalListView(items: items),
    );
  }
}

class HorizontalListView extends StatefulWidget {
  final List<String> items;

  HorizontalListView({required this.items});

  @override
  _HorizontalListViewState createState() => _HorizontalListViewState();
}

class _HorizontalListViewState extends State<HorizontalListView> {
  late List<bool> _isSelectedList;

  @override
  void initState() {
    super.initState();
    _isSelectedList = List<bool>.filled(widget.items.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.items.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  _isSelectedList[index] = !_isSelectedList[index];
                });
              },
              child: SizedBox(
                height: 32.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: _isSelectedList[index] ? Colors.blue : Colors.pink.shade700, // Change color if selected
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      widget.items[index],
                      style: TextStyle(
                        fontSize: 10.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        color: _isSelectedList[index] ? Colors.white : Colors.white, // Change text color if selected
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
