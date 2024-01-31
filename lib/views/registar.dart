import 'package:e_comarce_shop/shared/customElvatedButton.dart';
import 'package:e_comarce_shop/shared/customTextField.dart';
import 'package:e_comarce_shop/views/login.dart';
import 'package:flutter/material.dart';

class Rigaster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Color.fromARGB(255, 247, 247, 247),
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              CustomTextField(
                  textInputType: TextInputType.text,
                  hintText: 'Enter Your Username',
                  isPassword: false),
              const SizedBox(
                height: 50,
              ),
              CustomTextField(
                  hintText: 'Enter Your Email',
                  textInputType: TextInputType.emailAddress,
                  isPassword: false),
              const SizedBox(
                height: 50,
              ),
              CustomTextField(
                  hintText: 'Enter Your Password',
                  isPassword: true,
                  textInputType: TextInputType.emailAddress),
              SizedBox(
                height: 50,
              ),
              CustomElvatedButton(textContent: 'Registar'),
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
                          MaterialPageRoute(builder: (context) => Login()));
                    },
                    child: Text("Sign In",
                        style: TextStyle(color: Colors.blue, fontSize: 18)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
