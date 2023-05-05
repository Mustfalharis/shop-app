
import 'package:get/get.dart';
import 'package:social_app/logic/controllres/auth_controller.dart';
import 'package:social_app/logic/controllres/main_controller.dart';
import 'package:social_app/logic/controllres/prodcut_controller.dart';

import '../controllres/cart_controller.dart';
import '../controllres/category_controller.dart';

class ProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ProductController());
    Get.lazyPut(() => CartController());
     Get.put(CategoryController());
  }
}