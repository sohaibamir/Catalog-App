import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text("My First App"),
          backgroundColor: Colors.black26,
        ),
        body: const Center(
          child: Center(
            child: Text("Hi Flutter"),
          ),
        ),
        bottomNavigationBar: const Text(
          "End of the app",
          textAlign: TextAlign.center,
        ));
  }
}
