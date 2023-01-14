import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  final controller = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    double tinggi = MediaQuery.of(context).size.height;
    double lebar = MediaQuery.of(context).size.width;
    return Obx((() => Scaffold(
          body: SingleChildScrollView(
            child: Container(
              width: lebar,
              padding: EdgeInsets.fromLTRB(25, 50, 25, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: tinggi * 0.85,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            "Hi, Welcome Back!👋",
                            style: TextStyle(
                                fontSize: 35, fontWeight: FontWeight.w700),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 50),
                          child: Text(
                            "Hello again, you've been missed!",
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
                          margin: EdgeInsets.only(bottom: 20),
                          width: lebar,
                          child: TextField(
                            decoration: InputDecoration(
                                labelText: "Enter your Email",
                                border: OutlineInputBorder(),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: abu))),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: Text(
                            "Password",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w600),
                          ),
                        ),
                        Container(
                          width: lebar,
                          margin: EdgeInsets.only(bottom: 10),
                          child: TextField(
                            controller: controller.password,
                            obscureText:
                                controller.showhide.value ? false : true,
                            decoration: InputDecoration(
                                labelText: "Enter your Password",
                                border: OutlineInputBorder(),
                                suffixIcon: IconButton(
                                  onPressed: () => controller.changeEye(),
                                  icon: Icon(
                                    controller.showhide.value
                                        ? Icons.visibility
                                        : Icons.visibility_off,
                                    color: Colors.black,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(8),
                                    borderSide: BorderSide(color: abu))),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          width: lebar,
                          margin: EdgeInsets.only(bottom: 30),
                          child: TextButton(
                            onPressed: () => Get.toNamed(Routes.RESET),
                            child: Text(
                              "Forgot password",
                              style: TextStyle(color: abu),
                            ),
                          ),
                        ),
                        Container(
                          height: tinggi * 0.06,
                          width: lebar,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: bgLogin2),
                              onPressed: () {},
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300),
                              )),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: lebar * 0.2,
                                child: Divider(
                                  color: abu,
                                ),
                              ),
                              Container(
                                child: Text(
                                  "Or Login With",
                                  style: TextStyle(color: abu),
                                ),
                              ),
                              Container(
                                width: lebar * 0.2,
                                child: Divider(
                                  color: abu,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: lebar * 0.35,
                                height: 50,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      // side: BorderSide(width: 0.5, color: Colors.black),
                                      backgroundColor: Colors.white),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/Facebook.png"),
                                      Text(
                                        "Facebook",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: lebar * 0.35,
                                height: 50,
                                child: OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                      backgroundColor: Colors.white),
                                  onPressed: () {},
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Image.asset("assets/Google.png"),
                                      Text(
                                        "Google",
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: Text(
                          "Don't have an account?",
                          style: TextStyle(color: abu),
                        ),
                      ),
                      TextButton(
                          onPressed: () => Get.toNamed(Routes.SIGNUP),
                          child: Text(
                            "Sign up",
                            style: TextStyle(color: bgLogin2),
                          ))
                    ],
                  ))
                ],
              ),
            ),
          ),
        )));
  }
}
