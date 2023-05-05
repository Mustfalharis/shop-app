import 'package:get/get.dart';
import 'package:social_app/logic/controllres/auth_controller.dart';
import 'package:social_app/logic/controllres/main_controller.dart';
import 'package:social_app/logic/controllres/payment_controoler.dart';
import 'package:social_app/logic/controllres/settings_controller.dart';

class MainBininding extends Bindings
{
  @override
  void dependencies() {
    Get.put(MainController());
    Get.put(SettingsController());
    Get.put(PayMentController());

  }

}