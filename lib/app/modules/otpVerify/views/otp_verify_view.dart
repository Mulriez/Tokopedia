import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/otp_verify_controller.dart';

class OtpVerifyView extends GetView<OtpVerifyController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OtpVerifyView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'OtpVerifyView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
