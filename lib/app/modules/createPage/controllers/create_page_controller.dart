import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:tokopedia/app/controllers/slider_controller.dart';

class CreatePageController extends GetxController {
  //TODO: Implement CreatePageController
   final aktifasi = true.obs;
  changeActivation() => aktifasi.toggle();

  TextEditingController gambarSlider = TextEditingController();
  TextEditingController deskripsiSlider = TextEditingController();

  uploadGambar() {
    final data = SliderController().addPhoto();
    gambarSlider.text = data;
  }


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
