import 'dart:async';

import 'package:flutter/material.dart';


class CustomTimer extends StatefulWidget {
  final Duration duration;

  const CustomTimer({super.key, required this.duration});

  @override
  // ignore: library_private_types_in_public_api
  _CustomTimerState createState() => _CustomTimerState();
}

class _CustomTimerState extends State<CustomTimer> {
  Duration _remainingTime = const Duration();

  @override
  void initState() {
    super.initState();
    _remainingTime = widget.duration;
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_remainingTime > Duration.zero) {
          _remainingTime = _remainingTime - const Duration(seconds: 1);
        } else {
          timer.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 200,
      child :  DecoratedBox(decoration: const BoxDecoration(
        color: Colors.pink
      ),
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${_remainingTime.inHours.toString().padLeft(2, '0')}:${_remainingTime.inMinutes.remainder(60).toString().padLeft(2, '0')}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      )
      
    );
  }
}