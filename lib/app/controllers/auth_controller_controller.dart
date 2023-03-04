import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:tokopedia/app/routes/app_pages.dart';
import 'package:tokopedia/config/warna.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:url_launcher/url_launcher.dart';

class AuthControllerController extends GetxController {
  FirebaseAuth auth = FirebaseAuth.instance;
  Uri _url = Uri.parse('https://mail.google.com/mail/u/0/#inbox');
  String kodeVerifikasi = "";

  Stream<User?> streamAuthStatus() => auth.authStateChanges();
  login(String emailAddress, String password) async {
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      Get.offAllNamed(Routes.HOME);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
        Get.defaultDialog(
            title: "Alert!", middleText: "Usernya gk ada bang messi");
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
        Get.defaultDialog(
            title: "Alert!", middleText: "password ente salah bang messi");
      }
    } catch (e) {
      if (emailAddress == null && password == null) {
        Get.defaultDialog(title: "Alert!", middleText: "Kok Kosong bang messi");
      }
    }
  }

  logout() {
    print("Telah Log out");
    Get.defaultDialog(
        title: "Alert!",
        middleText: "Yakin Logout bang messi?",
        confirm: ElevatedButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Get.offAllNamed(Routes.LOGIN);
            },
            child: Text("YES")),
        cancel: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: bgRed),
            onPressed: () => Get.back(),
            child: Text("NO")));
  }

  signUp(String emailAddress, String password) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(
        email: emailAddress,
        password: password,
      );
      credential.user?.sendEmailVerification();
      Get.toNamed(Routes.VERIFY);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        Get.defaultDialog(
            title: "Alert!",
            middleText: "Email yg anda gunakan sudah dipakai bang messi");
      }
    } catch (e) {
      print(e);
    }
  }

  resetPassword(String email) async {
    try {
      final credential = await auth.sendPasswordResetEmail(email: email);
      Get.toNamed(Routes.VERIFY);
    } on FirebaseAuthException catch (e) {
      Get.defaultDialog(
          title: "Alert!", middleText: "GAGAL reset password bang messi");
    }
  }

  Future<UserCredential> signInWithGoogle() async {
    // Create a new provider
    GoogleAuthProvider googleProvider = GoogleAuthProvider();

    googleProvider
        .addScope('https://www.googleapis.com/auth/contacts.readonly');
    googleProvider.setCustomParameters({'login_hint': 'user@example.com'});
    Get.toNamed(Routes.HOME);

    // Once signed in, return the UserCredential
    return await auth.signInWithPopup(googleProvider);

    // Or use signInWithRedirect
    // return await FirebaseAuth.instance.signInWithRedirect(googleProvider);
  }

  Future<void> openMail() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }

  verifyPhone(String nomor) async {
    await auth.verifyPhoneNumber(
        phoneNumber: "+62${nomor}",
        verificationCompleted: (PhoneAuthCredential credential) async {
          await auth.signInWithCredential(credential).then((value) {
            if (value.user != null) {
              Get.toNamed(Routes.HOME);
            }
          });
        },
        verificationFailed: (FirebaseAuthException e) {
          Get.defaultDialog(
              title: "Alert!",
              middleText: "GAGAL mengirim pesan verifikasi, MASBRO");
        },
        codeSent: (String verificationId, int? resendToken) {
          kodeVerifikasi = verificationId;
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          kodeVerifikasi = verificationId;
        },
        timeout: Duration(seconds: 60));
    Get.toNamed(Routes.OTP_VERIFY, parameters: {"phone": nomor});
  }

  checkOtp(String sms) async {
    try {
      await auth
          .signInWithCredential(PhoneAuthProvider.credential(
              verificationId: kodeVerifikasi, smsCode: sms))
          .then((value) {
        if (value.user != null) {
          Get.toNamed(Routes.HOME);
        }
      });
    } catch (e) {
      Get.defaultDialog(
          title: "Alert!",
          middleText: "Kode verifikasi salah");
    }
  }
}
