import 'package:flutter/material.dart';

class LoginPageStatefull extends StatefulWidget {
  const LoginPageStatefull({super.key});

  @override
  State<LoginPageStatefull> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPageStatefull> {
  String username = "";
  String password = "";
  bool isLoginSuccess = true;

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
                      backgroundColor:
                          (isLoginSuccess) ? Colors.blue : Colors.red,
                      // backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                    ),
                    child: Text(
                      "Login",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    onPressed: () {
                      String text = "";
                      if (username == "123" && password == "123") {
                        setState(() {
                          text = "Login Success";
                          isLoginSuccess = true;
                        });
                      } else {
                        setState(() {
                          text = "Login Failed";
                          isLoginSuccess = false;
                        });
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
