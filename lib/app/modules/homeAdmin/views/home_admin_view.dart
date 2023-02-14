import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/home_admin_controller.dart';

class HomeAdminView extends GetView<HomeAdminController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('HomeAdminView'),
          centerTitle: true,
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 15),
              child: Wrap(
                children: [
                  InkWell(
                    child: custom(icon: "assets/menu/m2.png", text: "Promo Hari Ini"),
                    onTap: () => Get.toNamed(Routes.SLIDER_DATA),
                    ),
                  custom(icon: "assets/menu/m5.png", text: "Toserba"),
                ],
              ),
            ),
          ],
        ));
  }
}

Widget custom({icon, text}) {
  return Container(
    width: 65,
    child: Column(
      children: [
        Container(
          child: Image.asset(icon),
        ),
        Container(
          margin: EdgeInsets.only(top: 7),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(color: tam),
          ),
        ),
      ],
    ),
  );
}
