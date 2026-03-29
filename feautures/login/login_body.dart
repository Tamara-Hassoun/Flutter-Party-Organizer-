import 'package:flutter/material.dart';
import 'package:responsive/Feautured/login/Screen/Regester.dart';
import 'package:responsive/Feautured/login/widgets/Cutom_textField.dart';
import 'package:responsive/Feautured/login/widgets/custom_button.dart';
import 'package:responsive/Feautured/login/widgets/encrypted_textField.dart';

class loginBody extends StatelessWidget {
  const loginBody({super.key});
  @override
  Widget build(BuildContext context) {
    double heightS = MediaQuery.sizeOf(context).height * .25;

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
              "Sign in",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white.withOpacity(.5)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 12),
              child: ShadowedTextField(
                label: "Enter Email ",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ShadowedEncryptedTextField(),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 12),
              child: BlurButton(
                title: "Sign in",
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              children: [
                Text(
                  "Don't have an account ?",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.white.withOpacity(.5)),
                ),
                const SizedBox(
                  width: 12,
                ),
                GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegeterScreen(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign up",
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
