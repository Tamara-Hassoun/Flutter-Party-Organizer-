import 'package:flutter/material.dart';

class glass_textFieldencrypted extends StatefulWidget {
  const glass_textFieldencrypted({super.key, required this.controller});
  final TextEditingController controller ;

  @override
  State<glass_textFieldencrypted> createState() => _glass_textFieldencryptedState();
}

class _glass_textFieldencryptedState extends State<glass_textFieldencrypted> {
      bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    return   TextField(
                            obscureText: _obscureText,
controller: widget.controller,
                                                cursorColor: Colors.white,

                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock, color: Colors.white),
                      hintText: 'Password',
                      hintStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.3),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                       suffixIcon: IconButton(
            color: Colors.white,
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
                    style: TextStyle(color: Colors.white),
                  ) ;
  }
}