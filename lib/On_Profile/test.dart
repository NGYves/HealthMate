import 'package:flutter/material.dart';



class app extends StatelessWidget {
  final List<String> items = [
    "Apple",
    "Banana",
    "Orange",
    "Grapes",
    "Watermelon",
    "Pineapple",
    "Mango",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Horizontal ListView Example'),
        ),
        body: HorizontalListView(items: items),
      ),
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
  List<String> _remainingItems = [];

  @override
  void initState() {
    super.initState();
    _remainingItems.addAll(widget.items);
  }

  void _onItemTap(int index) {
    setState(() {
      _remainingItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _remainingItems.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: GestureDetector(
              onTap: () => _onItemTap(index),
              child: SizedBox(
                height: 32.0,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.pink.shade700,
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    _remainingItems[index],
 style: const TextStyle(fontSize: 10.0,fontFamily: 'Roboto',fontWeight: FontWeight.w600,color: Colors.white),
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
