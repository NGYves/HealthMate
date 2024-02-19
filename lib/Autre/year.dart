import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Part2PickerWrapper extends StatefulWidget {
  final Function(int) onIndexChanged;

  const Part2PickerWrapper({Key? key, required this.onIndexChanged}) : super(key: key);

  @override
  _Part2PickerWrapperState createState() => _Part2PickerWrapperState();
}

class _Part2PickerWrapperState extends State<Part2PickerWrapper> {
  int selectedIndex = DateTime.now().year - 1900; // Set the initial selected index to the current year

  @override
  Widget build(BuildContext context) {
    return Part(
      initialYear: selectedIndex,
      onSelectedItemChanged: (int index) {
        setState(() {
          selectedIndex = index;
        });
        widget.onIndexChanged(selectedIndex);
      },
    );
  }
}

class Part extends StatelessWidget {
  final ValueChanged<int> onSelectedItemChanged;
  final int initialYear;

  const Part({Key? key, required this.onSelectedItemChanged, required this.initialYear}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int currentYear = DateTime.now().year;
    int startYear = 1900;
    List<int> years = List.generate(currentYear - startYear + 1, (index) => startYear + index);

    return CupertinoPicker(
      backgroundColor: const Color(0xFFEDA1BB),
      itemExtent: 40,
      scrollController: FixedExtentScrollController(initialItem: initialYear),
      onSelectedItemChanged: onSelectedItemChanged,
      children: years.map((year) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8), // Add vertical padding between items
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                year.toString(),
                style: const TextStyle(fontSize: 25, fontWeight: FontWeight.w600,fontFamily: 'Poppins'),
              ),
              SizedBox(width: 8), // Add horizontal space between items
            ],
          ),
        );
      }).toList(),
    );
  }
}
