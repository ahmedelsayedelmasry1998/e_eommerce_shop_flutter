import 'package:e_comarce_shop/shared/customElvatedButton.dart';
import 'package:e_comarce_shop/shared/customTextField.dart';
import 'package:e_comarce_shop/views/registar.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 100,
            ),
            CustomTextField(
                textInputType: TextInputType.emailAddress,
                hintText: 'Enter Your Email',
                isPassword: false),
            const SizedBox(
              height: 50,
            ),
            CustomTextField(
                hintText: 'Enter Your Passsword',
                textInputType: TextInputType.visiblePassword,
                isPassword: true),
            const SizedBox(
              height: 50,
            ),
            CustomElvatedButton(textContent: 'Sign In'),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Dont Have An Account ? ",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => Rigaster()));
                  },
                  child: Text("Sign Up",
                      style: TextStyle(color: Colors.blue, fontSize: 18)),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}
