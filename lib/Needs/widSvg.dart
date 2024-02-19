import 'package:flutter/material.dart';

class WidSvg extends StatefulWidget {
  final String? name;
  final VoidCallback onTap ;
  

  const WidSvg({super.key, required this.name, required this.onTap});

  @override
  State<WidSvg> createState() => _WidSvgState();
  
}

class _WidSvgState extends State<WidSvg> {
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
          child: GestureDetector(
            onTap: () {
              widget.onTap();
            },
          child:
          Container(
            alignment: Alignment.bottomRight,
            
            child:  const Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          ),
        ))
      ],
    );
  }
}