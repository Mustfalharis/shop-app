
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:social_app/view/screens/payment_screen/payment_method_widget.dart';
import 'package:social_app/view/widgts/text_utils.dart';

import '../../../utils/theme.dart';
import 'delivery_continer_widghet.dart';

class PayMentScreen extends StatelessWidget {
  const PayMentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PayMent'),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Get.isDarkMode? darkGreyClr:mainColor,

      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              TextUtils(
                  text: 'Shipping to',
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  color: Get.isDarkMode? Colors.white:Colors.black,
              ),
              const SizedBox(height: 20,),
              DliverContineerWidget(),
              const SizedBox(height: 20,),
              TextUtils(
                text: 'Payment method',
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Get.isDarkMode? Colors.white:Colors.black,
              ),
              const SizedBox(height: 20,),
              paymentMethodWidget(),
              const SizedBox(height: 30,),
              Center(
                child: TextUtils(
                    text: 'Toatal 200\$',
                    fontSize: 20,
                    color: Get.isDarkMode? Colors.white:Colors.black,
                   fontWeight:FontWeight.bold ,
                ),
              ),
              const SizedBox(height: 20,),
              Center(
                child: SizedBox(
                  height: 50,
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      elevation: 0,
                      primary: Get.isDarkMode? pinkClr:mainColor,
                    ),
                    onPressed: ()
                    {

                    },
                    child: const Text(
                        'Pay Now',
                       style: TextStyle(
                         fontSize: 22,
                         color: Colors.white,
                       ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
