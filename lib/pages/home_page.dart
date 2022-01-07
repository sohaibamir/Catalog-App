import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Catalog App"),
          // backgroundColor: Colors.black,
          // elevation: 0.0,
        ),
        body: const Center(
          child: Center(
            child: Text("Hi Flutter"),
          ),
        ),
        drawer: MyDrawer(),
        bottomNavigationBar: const Text(
          "End of the app",
          textAlign: TextAlign.center,
        ));
  }
}
