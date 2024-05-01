import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_project/model/product/product.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  FirebaseFirestore firestor = FirebaseFirestore.instance;
  late CollectionReference productCollection;

  TextEditingController productNameCtrl = TextEditingController();
  TextEditingController productDescriptionCtrl = TextEditingController();
  TextEditingController productImgCtrl = TextEditingController();
  TextEditingController productPriceCtrl = TextEditingController();

  String category = "genarel";
  String brand = "un brand";
  bool offer = false;

  List<Product> products = [];

  @override
  Future<void> onInit() async {
    productCollection = firestor.collection("Products");
    await fetchProducts();
    super.onInit();
  }

  addProduct() {
    try {
      DocumentReference doc = productCollection.doc();
      Product product = Product(
        id: doc.id,
        name: productNameCtrl.text,
        category: category,
        description: productDescriptionCtrl.text,
        price: double.tryParse(productPriceCtrl.text),
        brand: brand,
        image: productImgCtrl.text,
        offer: offer,
      );
      final productjson = product.toJson();
      doc.set(productjson);
      Get.snackbar("Success", "product added succesfully",
          colorText: Colors.green);
      SetvalueDefault();
    } catch (e) {
      Get.snackbar("Success", e.toString(), colorText: Colors.green);
      print(e);
    }
  }

  fetchProducts() async {
    try {
      QuerySnapshot productSnapshot = await productCollection.get();
      final List<Product> retrievedProducts = productSnapshot.docs
          .map((doc) => Product.fromJson(doc.data() as Map<String, dynamic>))
          .toList();
      products.clear();
      products.assignAll(retrievedProducts);
      Get.snackbar("Success", "Product fetch Successfully",
          colorText: Colors.green);
    } catch (e) {
      Get.snackbar("Error", e.toString(),
          colorText: Colors.green);
      print(e);
    }finally{
      update();
  }
  }

  deleteProduct(String id) async {
   try {
     await productCollection.doc(id).delete();
     fetchProducts();
   } catch (e) {
     Get.snackbar("Error", e.toString(),
         colorText: Colors.red);
     print(e);
   }
  }

  SetvalueDefault() {
    productDescriptionCtrl.clear();
    productImgCtrl.clear();
    productPriceCtrl.clear();
    productNameCtrl.clear();

    category = "genarel";
    brand = "un brand";
    offer = false;
    update();
  }
}
