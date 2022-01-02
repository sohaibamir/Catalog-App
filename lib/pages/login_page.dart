import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey.shade300,
      child: SingleChildScrollView(
          child: Column(
        children: [
          // ignore: prefer_const_constructors
          SizedBox(
            height: 30.0,
          ),
          Image.asset(
            "assets/images/random.jpg",
            fit: BoxFit.cover,
            height: 200,
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 30.0,
          ),
          // ignore: prefer_const_constructors
          Text(
            "Welcome",
            style: const TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 20.0,
          ),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
              child: Column(
                children: [
                  TextFormField(
                      cursorColor: Colors.black,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                          hintText: "Enter username",
                          labelText: "Username",
                          hintStyle: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w200),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold))),
                  TextFormField(
                      obscureText: true,
                      cursorColor: Colors.black,
                      style: const TextStyle(color: Colors.black),
                      decoration: const InputDecoration(
                          hintText: "Enter password",
                          labelText: "Password",
                          hintStyle: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.w200),
                          labelStyle: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold))),
                  // ignore: prefer_const_constructors
                  SizedBox(
                    height: 30.0,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: const Text("Login"),
                    style: TextButton.styleFrom(
                      primary: Colors.black,
                      minimumSize: const Size(120, 40),
                      textStyle: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                  )
                ],
              )),
        ],
      )),
    );
  }
}
