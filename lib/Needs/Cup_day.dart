import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class cup_day extends StatefulWidget {
  const cup_day ({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _cup_day  createState() => _cup_day ();
}

class _cup_day  extends State<StatefulWidget> 
{
  String selectedValue = 'Same Day';
  @override
  Widget build(BuildContext context) {
    
    return  CupertinoButton(

                //  color:const Color(0xD9F58DB1),
                  child: Text(" $selectedValue", style: const TextStyle(
              fontSize: 10,
              fontFamily: 'Urbanist',
              fontWeight: FontWeight.w700,
              color: Colors.white,
              height: 33 / 30,
            ),),
                  onPressed: () => showCupertinoModalPopup(
                    context: context, 
                    builder: (_) => SizedBox(
                      width: double.infinity,
                      height: 200,
                      child: DecoratedBox(decoration: const BoxDecoration(
                        color: Color(0xFFFC7FB6),
                        shape: BoxShape.rectangle,
                      ),
                        child: CupertinoPicker(
                        backgroundColor: Colors.white,
                        itemExtent: 30,
                        
                        scrollController: FixedExtentScrollController(
                          initialItem: 5,
                        ),
                        children: const [
                          Text("1 day after"),Text("2 day after"),Text("3 day after"),Text("4 day after"),Text("5 day after"),Text("6 day after"),Text("7 day after"),Text("Same Day"),
                        ],
                        onSelectedItemChanged: (index) {
                          // // setState(() {
                          // //   String v = value.toString();
                          // //   selectedValue = v;
                          // });
                        }),
                      ),
                      // 
                      ),
                    ),
    );
  }}