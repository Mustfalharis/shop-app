



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:social_app/utils/theme.dart';
import '../../routes/routes.dart';
import '../widgts/text_utils.dart';

class WelcomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: Stack(
            children:
            [
             SizedBox(
               width: double.infinity,
               height: double.infinity,
               child: Image.asset('assets/images/background.png',fit: BoxFit.fill,),
             ),
              Container(
                color: Colors.black.withOpacity(0.2),
                width: double.infinity,
                height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:
                  [
                    const  SizedBox(height: 100,),
                    Container(
                      height: 60,
                      width: 190,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                          child: TextUtils(
                            text: 'Welcome',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                      ),
                    ),
                    const  SizedBox(height: 10,),
                    Container(
                      height: 60,
                      width: 230,
                      decoration: BoxDecoration(
                        color: Colors.black.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:
                        [
                         TextUtils(
                             text: 'Asroo',
                             fontSize: 35,
                             fontWeight: FontWeight.bold,
                             color: mainColor,
                         ),
                         const SizedBox(width: 7,),
                          TextUtils(
                            text: 'Shop',
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                    const  SizedBox(height: 150,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: mainColor,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 40,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                        onPressed: ()
                        {
                          Get.offNamed(Routes.loginScreen);
                        },
                        child: TextUtils(
                          text: 'Get Start',
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                    ),
                    const  SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:
                      [
                        TextUtils(
                            text: 'Don''t have an Account ?',
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.white,
                        ),
                        TextButton(
                            onPressed: ()
                            {
                              Get.offNamed(Routes.singUpScreen);
                            },
                            child: TextUtils(
                              textDecoration: TextDecoration.underline,
                              text: 'Sing Up',
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.normal,
                            ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              
            ],
          ) ,
        ) ,

    );
  }
}
