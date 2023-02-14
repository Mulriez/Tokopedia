import 'package:get/get.dart';

import 'package:tokopedia/app/modules/createPage/bindings/create_page_binding.dart';
import 'package:tokopedia/app/modules/createPage/views/create_page_view.dart';
import 'package:tokopedia/app/modules/detail/bindings/detail_binding.dart';
import 'package:tokopedia/app/modules/detail/views/detail_view.dart';
import 'package:tokopedia/app/modules/editData/bindings/edit_data_binding.dart';
import 'package:tokopedia/app/modules/editData/views/edit_data_view.dart';
import 'package:tokopedia/app/modules/home/bindings/home_binding.dart';
import 'package:tokopedia/app/modules/home/views/home_view.dart';
import 'package:tokopedia/app/modules/homeAdmin/bindings/home_admin_binding.dart';
import 'package:tokopedia/app/modules/homeAdmin/views/home_admin_view.dart';
import 'package:tokopedia/app/modules/login/bindings/login_binding.dart';
import 'package:tokopedia/app/modules/login/views/login_view.dart';
import 'package:tokopedia/app/modules/loginPhone/bindings/login_phone_binding.dart';
import 'package:tokopedia/app/modules/loginPhone/views/login_phone_view.dart';
import 'package:tokopedia/app/modules/otpVerify/bindings/otp_verify_binding.dart';
import 'package:tokopedia/app/modules/otpVerify/views/otp_verify_view.dart';
import 'package:tokopedia/app/modules/reset/bindings/reset_binding.dart';
import 'package:tokopedia/app/modules/reset/views/reset_view.dart';
import 'package:tokopedia/app/modules/signup/bindings/signup_binding.dart';
import 'package:tokopedia/app/modules/signup/views/signup_view.dart';
import 'package:tokopedia/app/modules/sliderData/bindings/slider_data_binding.dart';
import 'package:tokopedia/app/modules/sliderData/views/slider_data_view.dart';
import 'package:tokopedia/app/modules/splashscreen/bindings/splashscreen_binding.dart';
import 'package:tokopedia/app/modules/splashscreen/views/splashscreen_view.dart';
import 'package:tokopedia/app/modules/verify/bindings/verify_binding.dart';
import 'package:tokopedia/app/modules/verify/views/verify_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASHSCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASHSCREEN,
      page: () => SplashscreenView(),
      binding: SplashscreenBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.RESET,
      page: () => ResetView(),
      binding: ResetBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY,
      page: () => VerifyView(),
      binding: VerifyBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_PHONE,
      page: () => LoginPhoneView(),
      binding: LoginPhoneBinding(),
    ),
    GetPage(
      name: _Paths.OTP_VERIFY,
      page: () => OtpVerifyView(),
      binding: OtpVerifyBinding(),
    ),
    GetPage(
      name: _Paths.HOME_ADMIN,
      page: () => HomeAdminView(),
      binding: HomeAdminBinding(),
    ),
    GetPage(
      name: _Paths.SLIDER_DATA,
      page: () => SliderDataView(),
      binding: SliderDataBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_DATA,
      page: () => EditDataView(),
      binding: EditDataBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_PAGE,
      page: () => CreatePageView(),
      binding: CreatePageBinding(),
    ),
  ];
}
