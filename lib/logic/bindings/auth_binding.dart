
import 'package:get/get.dart';
import 'package:social_app/logic/controllres/auth_controller.dart';

class AuthBinding extends Bindings
{
  @override
  void dependencies() {
  Get.put(AuthController());
  }

}