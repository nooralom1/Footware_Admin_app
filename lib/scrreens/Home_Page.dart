import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_project/controller/home_controller.dart';
import 'package:firebase_project/scrreens/add_product_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
      appBar: AppBar(
        title: Text("Footware Admin"),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("Tittle"),
              subtitle: Text("prize--100"),
              trailing: IconButton(
                icon: Icon(Icons.delete),
                onPressed: () {},
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(AddProductPage());
        },
        child: Icon(Icons.add),
      ),
      );
    });
  }
}
