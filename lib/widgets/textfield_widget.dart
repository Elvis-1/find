import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  TextFieldContainer({Key? key, required this.hint}) : super(key: key);
  String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        style: TextStyle(fontSize: 20),
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          hintText: hint,
          hintStyle: TextStyle(color: Colors.grey),
          fillColor: Color(0xFFDACACB),
          filled: true,

          // border
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
          ),

          // enabled border
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 1.0, color: Colors.white)),

          // forcus border
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(width: 1.0, color: Colors.white)),
        ),
      ),
    );
    ;
  }
}
