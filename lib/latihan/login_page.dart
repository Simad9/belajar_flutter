import 'package:belajar_flutter/latihan/homepage.dart';
import 'package:flutter/material.dart';

String username = "";
String password = "";

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Login Screen"),
          backgroundColor: Colors.blue,
        ),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                  margin: EdgeInsets.only(bottom: 20),
                  child: Image.asset(
                    "assets/image/logo.png",
                    width: 100,
                  )),
              _usernameField(),
              _passwordField(),
              Container(
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      String text = "";
                      if (password == "123") {
                        text = "Login Success";
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) {
                          return Homepage(username: username);
                        }));
                      } else {
                        text = "Login Failed";
                      }

                      SnackBar snackBar = SnackBar(content: Text(text));
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }),
              ),
              Text("Lupa Passowrd?")
            ]));
  }

  Widget _usernameField() {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            onChanged: (value) {
              username = value;
            },
            decoration:
                InputDecoration(hintText: "Email", border: InputBorder.none),
          )),
    );
  }

  Widget _passwordField() {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(10)),
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: TextFormField(
            obscureText: true,
            onChanged: (value) {
              password = value;
            },
            decoration:
                InputDecoration(hintText: "Password", border: InputBorder.none),
          )),
    );
  }
}
