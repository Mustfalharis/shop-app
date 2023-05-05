
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:social_app/logic/bindings/auth_binding.dart';
import 'package:social_app/view/screens/auth/cart/cart_screen.dart';
import 'package:social_app/view/screens/auth/home/home_screen.dart';
import 'package:social_app/view/screens/auth/login_screen.dart';
import 'package:social_app/view/screens/auth/main_screen.dart';
import 'package:social_app/view/screens/auth/settings/settings_screen.dart';
import 'package:social_app/view/screens/auth/singup_screen.dart';
import 'package:social_app/view/screens/payment_screen/payment_screen.dart';
import '../logic/bindings/main_binding.dart';
import '../logic/bindings/prodcut_pinding.dart';
import '../view/screens/auth/forgot_password.dart';
import '../view/screens/welcome_screen.dart';

class AppRoutes
{
  // initialRoute
  static const welcome=Routes.welcomeScreen;
  static const mainScreen=Routes.mainScreen;
  // getPages
  static final routes=
  [
    GetPage(
      name: Routes.welcomeScreen,
      page: ()=> WelcomeScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: ()=>LoginScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.singUpScreen,
      page: ()=>SignUpScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.forgotPasswordScreen,
      page: ()=>ForgotPasswordScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.mainScreen,
      page: ()=>MainScreen(),
      bindings: [
        AuthBinding(),
        MainBininding(),
        ProductBinding(),
      ],
    ),
    GetPage(
      name: Routes.settingsScreen,
      page: ()=>SettingsScreen(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.cartScreen,
      page: ()=>CartScreen(),
      bindings: [
        AuthBinding(),
        ProductBinding(),
      ]
    ),
    GetPage(
        name: Routes.paymentscreen,
        page: ()=> const PayMentScreen(),
        bindings: [
          AuthBinding(),
          ProductBinding(),
          MainBininding(),
        ]
    ),



  ];
}


class Routes
{
  static const welcomeScreen='/welcomeScreen';
  static const loginScreen='/loginScreen';
  static const singUpScreen='/singUpScreen';
  static const forgotPasswordScreen='/forgotPasswordScreen';
  static const mainScreen='/mainScreen';
  static const settingsScreen='/settings';
  static const HomeScreen='/homeScreen';
  static const cartScreen='/cartscreen';
  static const paymentscreen='/paymentscreen';



}