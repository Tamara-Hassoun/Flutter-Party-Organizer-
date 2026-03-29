import 'package:flutter/material.dart';

class ShadowedTextField extends StatefulWidget {
  final String label;

  const ShadowedTextField({super.key, required this.label});

  @override
  State<ShadowedTextField> createState() => _ShadowedTextFieldState();
}

class _ShadowedTextFieldState extends State<ShadowedTextField> {
  // bool _isFocused = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.circular(8),
        // border: _isFocused
        //     ? Border.all(color: Colors.purple, width: 2)
        //     : null,
      ),
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(.2))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple, width: 2.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          contentPadding: EdgeInsets.all(8),
          label: Text(widget.label),
          labelStyle: TextStyle(color: Colors.black.withOpacity(.8)),
          border: InputBorder.none,
        ),
        // onChanged: (value) {
        //   setState(() {
        //     _isFocused = true;
        //   });
        // },
        // onSubmitted: (value) {
        //   setState(() {
        //     _isFocused = false;
        //   });
        // },
        // onTap: () {
        //   setState(() {
        //     _isFocused = true;
        //   });
        // },
        focusNode: FocusNode(),
      ),
    );
  }
}
