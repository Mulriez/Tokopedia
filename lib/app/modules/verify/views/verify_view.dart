import 'dart:html';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/controllers/auth_controller_controller.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/verify_controller.dart';

class VerifyView extends GetView<VerifyController> {
  final controller = Get.put(VerifyController());
  final authC = Get.put(AuthControllerController());
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Center(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 100),
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(bottom: 65),
                      child: Image.asset('assets/dll/Group 2.png'),
                    ),
                    Container(
                      child: Text(
                        "Check Your Email",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      width: lebar * 0.50,
                      child: Text(
                        "We have sent a password recover instructions to your email.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 15, color: abu),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 55),
                      width: lebar * 0.4,
                      height: tinggi * 0.06,
                      child: ElevatedButton(
                        onPressed: () => authC.openMail(),
                        child: Text(
                          "Open Email App",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                        style:
                            ElevatedButton.styleFrom(backgroundColor: bgLogin2),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50, bottom: 50),
                      child: TextButton(
                          onPressed: () => Get.toNamed(Routes.LOGIN),
                          child: Text(
                            "Skip, I'll confirm later",
                            style: TextStyle(
                                color: abu,
                                decoration: TextDecoration.underline),
                          )),
                    )
                  ],
                ),
              ),
              Container(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      "Did not receive the email ? Check your spam filter, or",
                      style: TextStyle(color: abu),
                    ),
                  ),
                  TextButton(
                      onPressed: () => Get.toNamed(Routes.LOGIN),
                      child: Text(
                        "try another email address",
                        style: TextStyle(color: bgLogin2),
                      ))
                ],
              ))
            ],
          ),
        ),
      ),
    ));
  }
}
