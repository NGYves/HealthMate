import 'package:flutter/material.dart';

class list extends StatefulWidget {
  const list({super.key});

  @override
  State<list> createState() => _listState();
}
 // Replace this with your database information

class _listState extends State<list> {

List<String> characters = ['calme', 'enjuoie', 'C'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body :
ListView.builder(
  itemCount: characters.length,
  itemBuilder: (context, index) {
    return SingleChildScrollView(
  scrollDirection: Axis.horizontal,
  child: Row(
      children: List.generate(
      2,
      (index) =>
        IntrinsicWidth(
  child: SizedBox(
          height: 35,
          child: Center(
            child: Text(
              characters[index ~/ 2],
              style: const TextStyle(
                fontFamily: 'Roboto',
                 color: Colors.white,
                fontSize: 19,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
  )
        ),
      
    )));
  },
)
    );
  }
}