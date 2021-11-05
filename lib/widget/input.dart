import 'package:arests_site/constants.dart';
import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  const Input({
    Key? key,
    required this.text,
    required this.controller,
    this.keyboardNumeric = true, this.numberChange = false,
  }) : super(key: key);

  final String text;
  final TextEditingController controller;
  final bool numberChange;
  final bool keyboardNumeric;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(24),
      child: TextFormField(
        cursorColor: Colors.grey.shade400,
        controller: controller,
        textAlign: numberChange == true? TextAlign.center : TextAlign.end,
        keyboardType:
        keyboardNumeric == false ? TextInputType.text : TextInputType.number,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(horizontal: 10),
          focusColor: Colors.grey.shade400,
          hoverColor: Colors.grey.shade400,
          labelText: text,
          labelStyle: bigGreyText,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400, width: 2.0),
            borderRadius: BorderRadius.circular(15.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400, width: 2.0),
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
      ),
    );
  }
}