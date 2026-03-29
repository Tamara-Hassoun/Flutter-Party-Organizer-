import 'package:flutter/material.dart';

class GlassTextfield extends StatelessWidget {
  final String label ;
final TextEditingController controller ;
  const GlassTextfield({super.key, required this.label, required this.controller,});

  // bool _isFocused = false;
  @override
  Widget build(BuildContext context) {
    return  TextField(
                            cursorColor: Colors.white,
 controller: controller,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email, color: Colors.white),
                      hintText: label,
                      hintStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.white.withOpacity(0.3),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    style: TextStyle(color: Colors.white),
                    keyboardType: TextInputType.emailAddress,
                  );
  }
}
  
