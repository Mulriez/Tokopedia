import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';

class ProdukController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;
  String url = "";
  File? path;

  adddata(String namaP, String gambarP, int hargaP, int diskonP, int hargaFix,
      String decsP) async {
    // Create a new user with a first and last name
    CollectionReference produk = firestore.collection("slider");
    final data = {
      "namaP": namaP,
      "gambarP": gambarP,
      "hargaP": hargaP,
      "diskonP": diskonP,
      "hargaFix": hargaFix,
      "decsP": decsP,
    };

    // Add a new document with a generated ID
    try {
      await produk.add(data).then((DocumentReference doc) =>
          Get.defaultDialog(title: "Alert!", middleText: "berhasiel, MASBRO"));
    } catch (e) {
      Get.defaultDialog(title: "Alert!", middleText: "GAGAL, wjvwqjqwc sih");
    }
  }

  Future<QuerySnapshot<Object?>> getData() async {
    CollectionReference produk = firestore.collection("produk");
    return await produk.get();
  }
}
