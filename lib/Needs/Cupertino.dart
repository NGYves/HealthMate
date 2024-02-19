import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class cupertino extends StatefulWidget {
  const cupertino({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _cupertino createState() => _cupertino();
}

class _cupertino extends State<StatefulWidget> 
{
  int selectedValue = 0;
  @override
  Widget build(BuildContext context) {
    
    return  CupertinoButton(

                 color:const Color(0xD9F58DB1),
                  child: Text(" ${selectedValue+1}  Jour(s)", style: const TextStyle(
              fontSize: 25,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w700,
              color: Colors.black,
              height: 33 / 30,
            ),),
                  onPressed: () => showCupertinoModalPopup(
                    context: context, 
                    builder: (_) => SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: DecoratedBox(decoration: const BoxDecoration(
                        color: Color(0xD9F58DB1),
                        shape: BoxShape.rectangle,
                      ),
                        child: CupertinoPicker(
                        backgroundColor: Colors.white,
                        itemExtent: 30,
                        scrollController: FixedExtentScrollController(
                          initialItem: 5,
                        ),
                        children: const [
                          Text("1"),Text("2"),Text("3"),Text("4"),Text("5"),Text("6"),Text("7"),Text("8"),Text("9"),Text("10"),Text("11"),Text("12"),Text("13"),Text("14"),Text("15"),Text("16"),Text("17"),Text("18"),Text("19"),Text("20"),Text("21"),Text("22"),Text("23"),Text("24"),Text("25"),Text("26"),Text("27"),Text("28"),Text("29"),Text("30"),Text("31"),
                        ],
                        onSelectedItemChanged: (int value) {
                          setState(() {
                            selectedValue = value;
                          });
                        }),
                      ),
                      // 
                      ),
                    ),
    );
  }}