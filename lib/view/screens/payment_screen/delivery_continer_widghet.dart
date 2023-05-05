import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/logic/controllres/auth_controller.dart';
import 'package:social_app/logic/controllres/payment_controoler.dart';
import 'package:social_app/routes/routes.dart';
import 'package:social_app/utils/theme.dart';

import '../../widgts/text_utils.dart';

class DliverContineerWidget extends StatefulWidget {

  @override
  State<DliverContineerWidget> createState() => _DliverContineerWidgetState();
}

class _DliverContineerWidgetState extends State<DliverContineerWidget> {
 final TextEditingController phoneController=TextEditingController();
  int radioContinerIndes=1;
  bool changeColors=false;
  final controller =Get.find<PayMentController>();
  final authController =Get.find<AuthController>();
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children:
      [
        buildRadioContiner(
          address: 'iraq , sohag medanlelshoban el moslmen',
           name: 'Musta Store',
           phone: controller.phoneNumber.value.toString(),
          title: 'Mustfa Shop',
          icon: Container(),
          value: 1,
          color: changeColors? Colors.white:Colors.grey.shade300,
          onChange: (value)
          {
            setState(() {
              radioContinerIndes=value;
              changeColors=!changeColors;
            });
          },
        ),
        const SizedBox(height: 10,),
        Obx(()
       {
       return  buildRadioContiner(
           address: controller.address.value,
           name: authController.displayUserName.value,
           phone: '${controller.phoneNumber.value}',
           title: 'Delivery',
           icon: InkWell(
             onTap: ()
             {
               Get.defaultDialog(
                 title: 'Enter Your Phone Number',
                 titleStyle: const TextStyle(
                   fontSize: 16,
                   color: Colors.black,
                   fontWeight: FontWeight.bold,
                 ),
                 backgroundColor: Colors.white,
                 radius: 10,
                 textConfirm: 'Cancel',
                 confirmTextColor: Colors.black,
                 textCancel: "Save",
                 cancelTextColor: Colors.black,
                 onCancel: ()
                 {

                   Get.toNamed(Routes.paymentscreen);
                 },
                 onConfirm: ()
                 {

                   Get.back();
                   controller.phoneNumber.value = phoneController.text;
                 },
                 buttonColor: Get.isDarkMode? pinkClr:mainColor,
                 content: Padding(
                   padding: const EdgeInsets.all(15),
                   child: TextField(
                     controller: phoneController,
                     maxLength: 11,
                     cursorColor: Colors.black,
                     keyboardType: TextInputType.text,
                     onSubmitted: (value)
                     {
                       phoneController.text=value;
                     },
                     decoration: InputDecoration(
                       fillColor: Get.isDarkMode? pinkClr.withOpacity(0.1): mainColor.withOpacity(0.2),
                       focusColor: Colors.red,
                       prefixIcon:  Icon(
                         Icons.phone,
                         color: Get.isDarkMode? pinkClr:mainColor,
                       ),
                       suffixIcon: IconButton
                         (
                         onPressed: ()
                         {
                           phoneController.clear();
                         },
                         icon: const Icon(
                           Icons.close,
                           color: Colors.black,
                         ),
                       ),
                       hintText: "Enter Your Phone Number",
                       hintStyle: const TextStyle(
                         color: Colors.black45,
                         fontSize: 14,
                         fontWeight: FontWeight.w500,
                       ),
                       filled: true,
                       enabledBorder: OutlineInputBorder(
                         borderSide: const BorderSide(color: Colors.white),
                         borderRadius: BorderRadius.circular(10),
                       ),
                       focusedBorder: OutlineInputBorder(
                         borderSide: const BorderSide(color: Colors.white),
                         borderRadius: BorderRadius.circular(10),
                       ),
                       errorBorder: OutlineInputBorder(
                         borderSide: const BorderSide(color: Colors.white),
                         borderRadius: BorderRadius.circular(10),
                       ),
                       focusedErrorBorder: OutlineInputBorder(
                         borderSide: const BorderSide(color: Colors.white),
                         borderRadius: BorderRadius.circular(10),
                       ),
                     ),
                   ),
                 ),
               );
             },
             child: Icon(
               Icons.contact_phone,
               color: Get.isDarkMode? pinkClr:mainColor,
             ),
           ),
           value: 2,
           color: changeColors? Colors.grey.shade300:Colors.white,
           onChange: (value)
           {
             setState(() {
               radioContinerIndes=value;
               changeColors=!changeColors;
             });
             controller.updatePosition();
           },
         );
      }
        ),
        const SizedBox(height: 10,),
      ],
    );
  }
  Widget buildRadioContiner({
  required Color color,
    required int value,
    required Function onChange,
    required String name,
    required String title,
    required String phone,
    required String address,
    required Widget icon,
})=> Container(
    width: double.infinity,
    height: 120,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: color,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 3.0,
          blurRadius: 5,
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
      [
        Radio(
            value: value,
            groupValue: radioContinerIndes ,
            onChanged:(value)
            {
              onChange(value);
            },
            fillColor: MaterialStateColor.resolveWith((states) => Colors.red),
        ),
        const SizedBox(width: 10,),
        Padding(
            padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              TextUtils(
                text: title,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                color:Colors.black,
              ),
              const SizedBox(height: 5,),
              TextUtils(
                text: name,
                fontWeight: FontWeight.normal,
                fontSize: 15,
                color:Colors.black,
              ),
              const SizedBox(height: 5,),
              Row(
                children: [
                  TextUtils(
                    text: phone,
                    fontWeight: FontWeight.normal,
                    fontSize: 15,
                    color:Colors.black,
                  ),
                  const SizedBox(width: 120,),
                  SizedBox(
                    child: icon,
                  ),
                ],
              ),
              const SizedBox(height: 5,),
              TextUtils(
                text: address,
                fontWeight: FontWeight.normal,
                fontSize: 15,
                color:Colors.black,
              ),

            ],
          ),
        ),
      ],
    ),
  );

}
