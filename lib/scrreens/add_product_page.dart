import 'package:firebase_project/widgets/dropdown_button_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import '../controller/home_controller.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (ctrl) {
      return Scaffold(
      appBar: AppBar(
        title: const Text("Add Product"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.all(10),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Add New Product",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: const Text("Product Name"),
                    hintText: "Enter Your Product Name"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: const Text("Product Description"),
                    hintText: "Enter Your Product Description"),
                maxLines: 5,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: const Text("Image Url"),
                    hintText: "Enter Your Image Url"),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    label: const Text("Product Price"),
                    hintText: "Enter Your Product Price"),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Flexible(
                      child: DropdownBtn(
                        items: const [
                          "Cat1",
                          "Cat2",
                          "Cat3",
                        ],
                        selectedItemText: 'Category',
                        onSelected: (selectedValue) {},
                      )),
                  Flexible(
                      child: DropdownBtn(
                        items: const [
                          "Brand1",
                          "Brand2",
                          "Brand3",
                        ],
                        selectedItemText: 'Brand',
                        onSelected: (selectedValue) {},
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Offer Product ?"),
              const SizedBox(
                height: 10,
              ),
              DropdownBtn(
                items: const ["true", "false"],
                selectedItemText: 'Offer ?',
                onSelected: (selectedValue) {},
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.indigoAccent,
                      foregroundColor: Colors.white
                  ),
                  onPressed: () {},
                  child: const Text(
                    "Add Product",
                  ))
            ],
          ),
        ),
      ),
      );
    });
  }
}
