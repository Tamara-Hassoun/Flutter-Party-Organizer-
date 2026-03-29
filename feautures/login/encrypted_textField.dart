import 'package:flutter/material.dart';

class ShadowedEncryptedTextField extends StatefulWidget {
  @override
  _ShadowedEncryptedTextFieldState createState() =>
      _ShadowedEncryptedTextFieldState();
}

class _ShadowedEncryptedTextFieldState
    extends State<ShadowedEncryptedTextField> {
  bool _obscureText = true;
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
        obscureText: _obscureText,
        cursorColor: Colors.grey,

        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.withOpacity(.2))),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.purple, width: 2.0),
            borderRadius: BorderRadius.circular(8.0),
          ),
          label: Text('Enter password'),
          labelStyle: TextStyle(color: Colors.black.withOpacity(.8)),
          contentPadding: EdgeInsets.all(12),
          border: InputBorder.none,
          suffixIcon: IconButton(
            color: Colors.black.withOpacity(.5),
            icon: Icon(
              _obscureText ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
          ),
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
