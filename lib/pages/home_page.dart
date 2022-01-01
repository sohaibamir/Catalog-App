import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.grey.shade300,
        child: Column(
          children: [
            // ignore: prefer_const_constructors
            SizedBox(
              height: 30.0,
            ),
            Image.asset(
              "assets/images/random.jpg",
              fit: BoxFit.cover,
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20.0,
            ),
            // ignore: prefer_const_constructors
            Text(
              "Welcome",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            // ignore: prefer_const_constructors
            SizedBox(
              height: 20.0,
            ),
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
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
                      height: 20.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        // ignore: avoid_print
                        print("Button working");
                      },
                      child: const Text("Login"),
                      style: TextButton.styleFrom(primary: Colors.black),
                    )
                  ],
                )),
          ],
        ));
  }
}
