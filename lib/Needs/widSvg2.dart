import 'package:flutter/material.dart';

class WidSvg2 extends StatefulWidget {
  final String? name;
  

  const WidSvg2({super.key, required this.name});

  @override
  State<WidSvg2> createState() => _WidSvgState2();
}

class _WidSvgState2 extends State<WidSvg2> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: 60,
            alignment: Alignment.centerLeft,
            child: Text(
              widget.name!,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            alignment: Alignment.bottomRight,
            
          ),
        )
      ],
    );
  }
}