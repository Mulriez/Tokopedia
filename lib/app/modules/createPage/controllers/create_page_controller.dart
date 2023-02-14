import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class CreatePageController extends GetxController {
  //TODO: Implement CreatePageController
   final aktifasi = true.obs;
  changeActivation() => aktifasi.toggle();

  TextEditingController gambarSlider = TextEditingController();
  TextEditingController deskripsiSlider = TextEditingController();


  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
