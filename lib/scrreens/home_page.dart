import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_project/controller/home_controller.dart';
import 'package:firebase_project/scrreens/add_product_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
   HomePage({super.key});
  @override
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Footware Admin"),
        centerTitle: true,
      ),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("Products").snapshots(),
        builder: (context, snapshot) {

          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(snapshot.data!.docs[index]["name"]),
                    subtitle: Text(snapshot.data!.docs[index]["price"].toString()),
                    trailing: IconButton(
                      icon: const Icon(Icons.delete),
                      onPressed: () {

                      },
                    ),
                  );
                });
          }
          return const CircularProgressIndicator();
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.to(const AddProductPage());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
