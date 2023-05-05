

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/models/product_model.dart';
import 'package:social_app/routes/routes.dart';
import 'package:social_app/utils/theme.dart';
import '../../../../logic/controllres/cart_controller.dart';
import 'cart_product_screen.dart';
import 'cart_total_screen.dart';
import 'empty_cart.dart';
class CartTotal extends StatelessWidget {

  // final ProducModels? producModels;
  final controller=Get.find<CartController>();
  @override
  Widget build(BuildContext context) {
    return Obx(()
    {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Row(
          children:
          [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text(
                  'Total',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' \$ ${controller.total}',
                  style: TextStyle(
                    color: Get.isDarkMode? Colors.white:Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: SizedBox(
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    primary: Get.isDarkMode? pinkClr:mainColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: ()
                  {
                    Get.toNamed(Routes.paymentscreen);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Check Out',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Icon(Icons.shopping_cart),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
    });
  }
}
