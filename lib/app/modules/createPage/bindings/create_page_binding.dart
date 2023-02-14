import 'package:get/get.dart';

import '../controllers/create_page_controller.dart';

class CreatePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CreatePageController>(
      () => CreatePageController(),
    );
  }
}
