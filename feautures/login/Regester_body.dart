import 'package:flutter/material.dart';
import 'package:responsive/Feautured/login/Screen/login_screen.dart';
import 'package:responsive/Feautured/login/widgets/Cutom_textField.dart';
import 'package:responsive/Feautured/login/widgets/custom_button.dart';
import 'package:responsive/Feautured/login/widgets/encrypted_textField.dart';

class regesterBody extends StatelessWidget {
  const regesterBody({super.key});
  @override
  Widget build(BuildContext context) {
    double heightS = MediaQuery.sizeOf(context).height * .2;

    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: heightS,
            ),
            Text(
              "Sign up",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white.withOpacity(.5)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: ShadowedTextField(
                label: "Enter name",
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: ShadowedTextField(label: "Enter number"),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12),
              child: ShadowedTextField(label: "Enter email"),
            ),
            SizedBox(
              height: 20,
            ),
            ShadowedEncryptedTextField(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: BlurButton(
                title: "Sign up",
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Text(
                  "already have an account ?",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white.withOpacity(.5)),
                ),
                SizedBox(
                  width: 12,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Colors.white.withOpacity(.5)),
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
