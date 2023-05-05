
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/utils/theme.dart';

import '../../../../logic/controllres/cart_controller.dart';
import 'cart_product_screen.dart';
import 'cart_total_screen.dart';
import 'empty_cart.dart';

class CartScreen extends StatelessWidget {
    final controller=Get.find<CartController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child:Scaffold(
          backgroundColor: context.theme.backgroundColor,
          appBar: AppBar(
            title: Text('Cart Items'),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Get.isDarkMode? darkGreyClr:mainColor,
            actions:
            [
              IconButton(
                  onPressed: ()
                  {
                    controller.clearAllProducts();
                  },
                  icon: Icon(Icons.backspace),
              ),
            ],
          ),
          body: Obx(()
          {
            if(controller.productsMap.isNotEmpty)
              {
                return SingleChildScrollView(
                  child: Column(
                    children:
                    [
                      SizedBox(
                        height: 580,
                        child: ListView.separated(
                          itemBuilder: (context,index)
                          {
                            return CartProductCard(
                              producModels:
                              controller.productsMap.keys.toList()[index],
                              index: index,
                              quantity: controller.productsMap.values.toList()[index],
                            );
                          },
                          separatorBuilder: (context,index)=>SizedBox(height: 10,),
                          itemCount: controller.productsMap.length,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: CartTotal(),
                      ),
                    ],
                  ),
                );
              }
            else
              {
                return EmptyCart();
              }

          }
          ),
        ) ,
    );
  }
}
