import 'package:flutter/material.dart';

class ReplaceableTextWidget extends StatefulWidget {
  final String initialText;

  ReplaceableTextWidget({Key? key, required this.initialText}) : super(key: key);

  @override
  _ReplaceableTextWidgetState createState() => _ReplaceableTextWidgetState();
}

class _ReplaceableTextWidgetState extends State<ReplaceableTextWidget> {
  TextEditingController _textEditingController = TextEditingController();
  late String _displayText;

  @override
  void initState() {
    super.initState();
    _displayText = widget.initialText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      height: 20,
      width: MediaQuery.of(context).size.width,
      child: GestureDetector(
        onTap: () {
          _showEditDialog();
        },
        child: Text(
          _displayText,
          style: TextStyle(
            fontSize: 15,
            fontFamily: 'roboto',
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  void _showEditDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Theme(
          data: ThemeData(
            dialogBackgroundColor: Colors.pinkAccent,
          ),
          child: AlertDialog(
            title: Text("Text de Rappel"),
            content: TextField(
              controller: _textEditingController,
              decoration: InputDecoration(hintText: "Nouveau Texte"),
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  setState(() {
                    _displayText = _textEditingController.text;
                  });
                  Navigator.of(context).pop();
                },
                child: Text("OK"),
              ),
            ],
          ),
        );
      },
    );
  }
}