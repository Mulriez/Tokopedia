import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:file_picker/file_picker.dart';

class SliderController extends GetxController {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  FirebaseStorage storage = FirebaseStorage.instance;
  String url = "";
  File? path;


  adddata(bool aktifSlider, String ketSlider, String gambarSlider) async {
    // Create a new user with a first and last name
    CollectionReference slider = firestore.collection("slider");
    final data = {
      "aktifSlider": aktifSlider,
      "gambarSlider": gambarSlider,
      "ketSlider": ketSlider
    };

   // Add a new document with a generated ID
    try {
      await slider.add(data).then((DocumentReference doc) =>
          Get.defaultDialog(title: "Alert!", middleText: "berhasiel, MASBRO"));
    } catch (e) {
      Get.defaultDialog(title: "Alert!", middleText: "GAGAL, tolol sih");
    }
  }

  Future<QuerySnapshot<Object?>> getData() async {
    CollectionReference slider = firestore.collection("slider");
    return await slider.get();
  }

  updateData(String id, bool aktifSlider, String ketSlider,
      String gambarSlider) async {
    try {
      final sliderData = {
        "aktifSlider": aktifSlider,
        "gambarSlider": gambarSlider,
        "ketSlider": ketSlider
      };

      DocumentReference slider = firestore.collection("slider").doc(id);
      await slider.update(sliderData);
      Get.defaultDialog(title: "Alert!", middleText: "berhasiel merubah data");
    } catch (e) {
       Get.defaultDialog(title: "Alert!", middleText: "gagal merubah data");
    }
  }
  
   deleteData(String id) async {
    try {
      DocumentReference Slider = firestore.collection('slider').doc(id);
      await Slider.delete();
      Get.defaultDialog(
          title: "yakin Delete?",
          middleText: "Delete bro",
          confirm: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: bgRed),
            onPressed: () async {
              // await FirebaseAuth.instance.delete();
              Get.offAndToNamed(Routes.SLIDER_DATA);
              print("berhasil Delete");
            },
            child: Text("yes"),
          ),
          cancel: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: bgRed),
            onPressed: () => Get.back(),
            child: Text("No"),
          ));
      // return Get.offAllNamed(Routes.SLIDER_DATA);
    } catch (e) {
      Get.defaultDialog(title: 'Alert', middleText: 'gagal mendelete data');
      print(e);
    }
  }
  addPhoto() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      File file = File(result.files.single.path!);
      String namaFile = result.files.first.name;
      url = namaFile;
      path = file;

      try {
        await storage.ref("${namaFile}").putFile(file);
        final data = await storage.ref("${namaFile}").getDownloadURL();

        url = data;
        return url;
      } catch (e) {
        Get.defaultDialog(title: 'Alert', middleText: 'gagal mengupload data');
      }
    } else {
      print("tidak mengirim file");
    }
  }
}