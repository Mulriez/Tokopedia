import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: tinggi,
        padding: EdgeInsets.fromLTRB(20, 50, 30, 20),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [bgLogin, bgLogin2])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: tinggi * 0.85,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: lebar,
                      height: tinggi * 0.3,
                      margin: EdgeInsets.only(bottom: 20),
                      child: Image.asset("assets/dll/sp.png")),
                  Container(
                    margin: EdgeInsets.only(bottom: 30),
                    width: 200,
                    child: Text(
                      "Let's Get Started",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 90),
                    width: 260,
                    child: Text(
                      "Connect with each other with chatting or calling. Enjoy safe and private texting.",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    height: tinggi * 0.06,
                    width: lebar,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white),
                        onPressed: () {},
                        child: Text(
                          "Join now",
                          style: TextStyle(
                              color: Color(0xFF0D8173),
                              fontWeight: FontWeight.w300),
                        )),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                    onPressed: () => Get.toNamed(Routes.LOGIN),
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    "try another way",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                TextButton(
                    onPressed: () => Get.toNamed(Routes.LOGIN_PHONE),
                    child: Text(
                      "Login by phone Number",
                      style: TextStyle(color: Colors.white),
                    ))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
