

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';
import 'package:social_app/logic/bindings/main_binding.dart';
import 'package:social_app/logic/controllres/main_controller.dart';
import 'package:social_app/utils/theme.dart';
import 'package:badges/badges.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../logic/controllres/cart_controller.dart';
import '../../../routes/routes.dart';

class MainScreen extends StatelessWidget {
  final controller =Get.find<MainController>();
  final cartController=Get.find<CartController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Obx(()
        {
          return Scaffold(
            backgroundColor: context.theme.backgroundColor,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Get.isDarkMode?darkGreyClr :mainColor,
              leading: Container(),
              centerTitle: true,
              title: Text(controller.title[controller.currentIndex.value]),
              actions:
              [
                // IconButton(
                //   onPressed: ()
                //   {
                //     Get.toNamed(Routes.cartScreen);
                //   },
                //   icon: Image.asset('assets/images/shop.png'),
                // ),
                Obx(
                      () => Badge(
                    position: BadgePosition.topEnd(top: 0, end: 3),
                    animationDuration: const Duration(milliseconds: 300),
                    animationType: BadgeAnimationType.slide,
                    badgeContent: Text(
                      cartController.quantity().toString(),
                      style: const TextStyle(color: Colors.white),
                    ),
                    child: IconButton(
                      onPressed: () {
                        Get.toNamed(Routes.cartScreen);
                      },
                      icon: Image.asset('assets/images/shop.png'),
                    ),
                  ),
                ),
              ],
            ),

            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: Get.isDarkMode? darkGreyClr :Colors.white,
              currentIndex: controller.currentIndex.value,
              type: BottomNavigationBarType.fixed,
              items:
              [
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Get.isDarkMode? Colors.white:Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.home,
                    color: Get.isDarkMode?pinkClr :mainColor,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.category,
                    color: Get.isDarkMode? Colors.white:Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.category,
                    color: Get.isDarkMode? pinkClr :mainColor,
                  ),
                  label: 'Category',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    color: Get.isDarkMode?Colors.white:Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.favorite,
                    color: Get.isDarkMode? pinkClr :mainColor,
                  ),
                  label: 'Favorite',
                ),
                BottomNavigationBarItem(
                  icon: Icon(
                    Icons.settings,
                    color: Get.isDarkMode? Colors.white:Colors.black,
                  ),
                  activeIcon: Icon(
                    Icons.settings,
                    color: Get.isDarkMode? pinkClr :mainColor,
                  ),
                  label: 'Settings',
                ),
              ],
              onTap: (index)
              {
               controller.currentIndex.value=index;
              },
            ),
            body: controller.tabs[controller.currentIndex.value],
          );
        }
        ),
    );
  }
}
