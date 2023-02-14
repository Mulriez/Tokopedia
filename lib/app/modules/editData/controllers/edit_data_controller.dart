import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class EditDataController extends GetxController {
  final active = true.obs;
  changeActivation() => active.toggle();
  TextEditingController gambarSlider = TextEditingController();
  TextEditingController ketSlider = TextEditingController();


  RxBool aktif = true.obs;
  onChange() => aktif.toggle();

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
