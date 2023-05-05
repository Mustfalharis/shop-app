


import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:social_app/view/screens/category_screens/category_screen.dart';
import 'package:social_app/view/screens/auth/favorites_screen.dart';
import 'package:social_app/view/screens/auth/home/home_screen.dart';
import 'package:social_app/view/screens/auth/settings/settings_screen.dart';
class MainController extends GetxController
{
  RxInt currentIndex=0.obs ;
  List<Widget>tabs= [
    HomeScreen(),
    CategoryScreen(),
    FavoritesScreen(),
    SettingsScreen(),
  ].obs;

  final title=[
    "Asroo Shop",
    "Categories",
    "Favorites",
    "Settings"

  ].obs;

}