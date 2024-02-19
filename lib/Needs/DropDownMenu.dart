import 'package:flutter/material.dart';




class classmenu extends StatefulWidget {
  final Function(int)? onItemSelected;

  const classmenu ({Key? key, this.onItemSelected}) : super(key: key);

  @override
  _classmenu  createState() => _classmenu ();
}

class _classmenu  extends State<classmenu > {
  final List<String> items = [
    'Same Day',
    '1 Day Before',
    '2 Days Before',
    '3 Days Before',
    '4 Days Before',
    '5 Days Before',
    '6 Days Before',
    '7 Days Before',
    
  ];

  late String selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = items[0]; // Initial selected value
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      dropdownColor: Colors.pink,
      
      value: selectedValue,
      style: TextStyle(color: Colors.white), // Customize the text color
      onChanged: (String? newValue) {
        setState(() {
          selectedValue = newValue!;
        });
        // Handle dropdown value change here
        int? index = getSelectedIndex(newValue);
        if (index != null) {
          widget.onItemSelected?.call(index);
        } else {
          print('Value not found in the list');
        }
      },
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }

  int? getSelectedIndex(String? selectedValue) {
    if (selectedValue != null) {
      return items.indexOf(selectedValue);
    }
    return null; // Return null if no value is selected
  }
}
