import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class Part2PickerWrapper extends StatefulWidget {
  final Function(int) onIndexChanged;

  const Part2PickerWrapper({Key? key, required this.onIndexChanged}) : super(key: key);

  @override
  _Part2PickerWrapperState createState() => _Part2PickerWrapperState();
}

class _Part2PickerWrapperState extends State<Part2PickerWrapper> {
  int selectedIndex = 5;

  @override
  Widget build(BuildContext context) {
    return Part2Picker(
      onSelectedItemChanged: (int index) {
        setState(() {
          selectedIndex = index;
        });
        widget.onIndexChanged(selectedIndex);
      },
    );
  }
}

class Part2Picker extends StatelessWidget {
  final ValueChanged<int> onSelectedItemChanged;

  const Part2Picker({Key? key, required this.onSelectedItemChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPicker(
      backgroundColor: const Color(0xFFEDA1BB),
      itemExtent: 40,
      scrollController: FixedExtentScrollController(initialItem: 5),
      onSelectedItemChanged: onSelectedItemChanged,
      children: List.generate(31, (int index) {
        return 
        Text(
          (index + 1).toString(),
          style: const TextStyle(fontSize: 35, fontWeight: FontWeight.w700),
        );
      }),
    );
  }
}
