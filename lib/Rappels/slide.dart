import 'package:flutter/material.dart';
import 'package:healthapp/Rappels/Fertility.dart';

class slide extends StatefulWidget {
  const slide({super.key});

  @override
  State<slide> createState() => _slideState();
}

class _slideState extends State<slide> {
  @override
  Widget build(BuildContext context) {
    return ListView(

children: const [
  ferty()
],


    );
  }
}