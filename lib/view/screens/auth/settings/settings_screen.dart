import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:social_app/logic/controllres/them_controller.dart';
import 'package:social_app/utils/theme.dart';
import 'package:social_app/view/screens/auth/settings/profile_widget.dart';
import 'package:social_app/view/widgts/text_utils.dart';

import '../../../../logic/controllres/auth_controller.dart';
import 'dark_mode_widget.dart';
import 'logout_widget.dart';

class SettingsScreen extends StatelessWidget {
  final controller = Get.find<AuthController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.theme.backgroundColor,
      body: ListView(
        padding: EdgeInsets.all(24),
        children:
        [
          ProfileWidget(),
          const SizedBox(height: 10,),
          Divider(
            color: Get.isDarkMode?Colors.white:Colors.grey,
            thickness: 2,
          ),
          const SizedBox(height: 20,),
          TextUtils(
              text: 'GENERAL',
              fontSize: 18,
              fontWeight: FontWeight.bold,
               color:Get.isDarkMode? pinkClr:mainColor,
          ),
          const SizedBox(height: 20,),
          DarkModelWidget(

          ),
          const SizedBox(height: 20,),
          // LanguageWidget();
          const SizedBox(height: 20,),
          LogOutWidget(),


        ],
      ),
      // body: Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     TextButton(
      //       onPressed: () {
      //         ThemController().changesTheme();
      //       },
      //       child: Text(
      //         'darkMode',
      //         style: TextStyle(
      //           color: Get.isDarkMode ? Colors.white : Colors.black,
      //         ),
      //       ),
      //     ),
      //     const SizedBox(
      //       height: 20,
      //     ),
      //     GetBuilder<AuthController>(builder: (_) {
      //       return TextButton(
      //         onPressed: () {
      //           Get.defaultDialog(
      //             title: 'Lgout From App',
      //             titleStyle: const TextStyle(
      //               fontSize: 18,
      //               color: Colors.black,
      //               fontWeight: FontWeight.bold,
      //             ),
      //             middleText: 'Are you sure  you need to logout',
      //             middleTextStyle: const TextStyle(
      //               fontSize: 18,
      //               color: Colors.black,
      //               fontWeight: FontWeight.bold,
      //             ),
      //             backgroundColor: Colors.grey,
      //             radius: 10,
      //             textCancel: 'No',
      //             cancelTextColor: Colors.white,
      //             textConfirm: 'Yes',
      //             confirmTextColor: Colors.white,
      //             onCancel: () {
      //               Get.back();
      //             },
      //             onConfirm: () {
      //               controller.singOutFrom();
      //             },
      //             buttonColor: Get.isDarkMode ? pinkClr : mainColor,
      //           );
      //         },
      //         child: Text(
      //           'LogOut',
      //           style: TextStyle(
      //             color: Get.isDarkMode ? Colors.white : Colors.black,
      //           ),
      //         ),
      //       );
      //     }),
      //   ],
      // ),
    );
  }
}
