import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/reset_controller.dart';

class ResetView extends GetView<ResetController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
              body: SingleChildScrollView(
                child: Container(
                  width: lebar,
                  padding: EdgeInsets.fromLTRB(25, 50, 25, 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        child: InkWell(
                          onTap: () => Get.toNamed(Routes.LOGIN),
                          child: Icon(Icons.arrow_back_rounded, size: 35,)),
                      ),
                      Container(
                        height: tinggi * 0.85,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: Text(
                                "Reset Password",
                                style: TextStyle(
                                    fontSize: 35, fontWeight: FontWeight.w700),
                              ),
                            ),
                            Container(
                              width: 370,
                              margin: EdgeInsets.only(bottom: 50),
                              child: Text(
                                "Enter the email associated with your account and we'll send an email with instructions to reset your password.",
                                style: TextStyle(fontSize: 18, color: abu),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 20),
                              child: Text(
                                "Email address",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 50),
                              width: lebar,
                              child: TextField(
                                decoration: InputDecoration(
                                    labelText: "Enter your Email Address",
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        borderSide: BorderSide(color: abu))),
                              ),
                            ),
                            Container(
                              height: tinggi * 0.07,
                              width: lebar,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: bgLogin2),
                                  onPressed: () => Get.toNamed(Routes.VERIFY),
                                  child: Text(
                                    "Send Instructions",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w300),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
  }
}
