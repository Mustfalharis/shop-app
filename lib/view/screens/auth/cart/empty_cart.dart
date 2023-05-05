

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/utils/theme.dart';

import '../../../../routes/routes.dart';

class EmptyCart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:
        [
          Icon(
              Icons.shopping_cart,
              size: 130,
              color: Get.isDarkMode? Colors.white:Colors.black,
          ),
          const SizedBox(height: 40,),
          RichText(
              text:TextSpan(
                children: [
                  TextSpan(
                   text: 'Your Cart is ',
                    style: TextStyle(
                      color: Get.isDarkMode? Colors.white:Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                  TextSpan(
                    text: 'Empty',
                    style: TextStyle(
                      color: Get.isDarkMode? pinkClr:mainColor,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,

                    ),
                  ),
                ]
              ),

          ),
          const SizedBox(height: 10,),
          Text(
            'Add items to get Started',
            style: TextStyle(
            color:Get.isDarkMode? Colors.white:Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.bold,

          ),),
          const SizedBox(height: 50,),
          SizedBox(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                primary: Get.isDarkMode?pinkClr:mainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),

                ),
              ),
                onPressed: ()
                {
                  Get.toNamed(Routes.mainScreen);
                },
                child: Text(
                    'Go To Home',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
            ),
          ),
        ],
      ),
    );
  }
}
