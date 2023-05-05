

import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:social_app/routes/routes.dart';
import 'package:social_app/utils/theme.dart';

import '../../models/product_model.dart';

class CartController extends GetxController
{
 var productsMap={}.obs;

void addProductToCart({required ProducModels? productModels})
  {
  if(productsMap.containsKey(productModels))
    {
      productsMap[productModels]+=1;
    }
  else
    {
      productsMap[productModels]=1;
    }
  }
  void removeProductFarmCart({required ProducModels? productModels})
  {
   if(productsMap.containsKey(productModels)&& productModels==1)
     {
       productsMap.removeWhere((key, value) => key==productModels);
     }
   else
     {
       productsMap[productModels]-=1;
     }
  }
  void removeOneProduct({required ProducModels? productModels})
  {
    productsMap.removeWhere((key, value) => key==productModels);
  }

  void clearAllProducts()
  {

      Get.defaultDialog(
        title: 'Clean Products',
        titleStyle: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        middleText: 'Are you sure you need clear products',
        middleTextStyle: const TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        backgroundColor: Colors.grey,
        radius: 10,
        textCancel: 'No',
        cancelTextColor: Colors.white,
        textConfirm: 'Yes',
        confirmTextColor: Colors.white,
        onCancel: () {
          Get.toNamed(Routes.cartScreen);
        },
        onConfirm: () {
          productsMap.clear();
          Get.back();
        },
        buttonColor: Get.isDarkMode ? pinkClr : mainColor,
      );
  }

 int quantity() {
   if (productsMap.isEmpty) {
     return 0;
   } else {
     return productsMap.entries
         .map((e) => e.value)
         .toList()
         .reduce((value, element) => value + element);
   }
 }
  get productSubTotal=>productsMap.entries.map((e) => e.key.price* e.value).toList();

  get total=> productsMap.entries.map((e) => e.key.price* e.value)
      .toList().reduce((value, element) =>
  value+element).toStringAsFixed(2);

}