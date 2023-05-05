

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:social_app/view/screens/category_screens/category_screen.dart';
import 'package:social_app/view/screens/auth/favorites_screen.dart';
import 'package:social_app/view/screens/auth/home/home_screen.dart';
import 'package:social_app/view/screens/auth/settings/settings_screen.dart';
class SettingsController extends GetxController
{
   var swithchValue = false.obs;
   var storage = GetStorage();
   // var langLocal = ene;

   String capitalize(String profileName) {
      return profileName.split(" ").map((name) => name.capitalize).join(" ");
   }

   //Language

   @override
   void onInit() async {
      super.onInit();

      // langLocal = await getLanguage;
   }

   void saveLanguage(String lang) async {
      await storage.write("lang", lang);
   }

   Future<String> get getLanguage async {
      return await storage.read("lang");
   }

   // void changeLanguage(String typeLang) {
   //    saveLanguage(typeLang);
   //    if (langLocal == typeLang) {
   //       return;
   //    }
   //
   //    if (typeLang == frf) {
   //       langLocal = frf;
   //       saveLanguage(frf);
   //    } else if (typeLang == ara) {
   //       langLocal = ara;
   //       saveLanguage(ara);
   //    } else {
   //       langLocal = ene;
   //       saveLanguage(ene);
   //    }
   //    update();
   // }
}