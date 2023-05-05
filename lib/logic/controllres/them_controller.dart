
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get_storage/get_storage.dart';

class ThemController
{
  final GetStorage boxStorage=GetStorage();
  final key='isDarkModes';

  saveThemeDataInBox(bool value)
  {
    boxStorage.write(key, value);
  }
 bool getThemeDataFromBox()
  {
   return boxStorage.read<bool>(key)?? false;
  }
  ThemeMode get themeDateGet=>  getThemeDataFromBox()?
  ThemeMode.dark:
  ThemeMode.light;

  void changesTheme() {
    Get.changeThemeMode(getThemeDataFromBox()? ThemeMode.light:ThemeMode.dark);
    saveThemeDataInBox(!getThemeDataFromBox());
  }

}