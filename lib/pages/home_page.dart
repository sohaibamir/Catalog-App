import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Text("Catalog App"),
          // backgroundColor: Colors.black,
          // elevation: 0.0,
        ),
        body: Padding(
          padding: const EdgeInsets.all(14.0),
          child: ListView.builder(
            itemCount: dummyList.length,
            itemBuilder: (context, index) {
              return ItemWidget(
                item: dummyList[index],
              );
            },
          ),
        ),
        drawer: MyDrawer(),
        bottomNavigationBar: const Text(
          "End of the app",
          textAlign: TextAlign.center,
        ));
  }
}
