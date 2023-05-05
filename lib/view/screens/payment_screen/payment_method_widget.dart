
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:social_app/utils/theme.dart';

import '../../widgts/text_utils.dart';

class paymentMethodWidget extends StatefulWidget {

  @override
  State<paymentMethodWidget> createState() => _paymentMethodWidgetState();
}

class _paymentMethodWidgetState extends State<paymentMethodWidget> {
  int radioPaymentIndex=1;
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children:
          [
            buildRadioPayment(
              name: 'Paypal',
              image:'assets/images/paypal.png',
              sclae: 0.7,
              value: 1,
              onChange: (value)
                {
                  setState(() {
                    radioPaymentIndex=value;
                  });
                }
            ),
            const SizedBox(height: 15,),
            buildRadioPayment(
                name: 'Google Pay',
                image:'assets/images/google.png',
                sclae: 0.8,
                value: 2,
                onChange: (value)
                {
                  setState(() {
                    radioPaymentIndex=value;
                  });
                }
            ),
           const SizedBox(height: 15,),
            buildRadioPayment(
                name: 'Cart',
                image:'assets/images/credit.png',
                sclae: 0.7,
                value: 3,
                onChange: (value)
                {
                  setState(() {
                    radioPaymentIndex=value;
                  });
                }
            ),
          ],
        ) ,
    );
  }

  Widget buildRadioPayment({
    required String image,
    required double sclae,
    required String name,
    required int value,
    required Function onChange,
   })=>Container(
    height: 50,
    width: double.infinity,
    color: Colors.grey[300],
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:
      [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
          [
            Image.asset(
              image.toString(),
              scale: sclae ,
            ),
            const SizedBox(width: 10,),
            TextUtils(
              text: name,
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color:Colors.black,
            )


          ],
        ),
        Radio(
            value: value,
            groupValue: radioPaymentIndex,
            onChanged: (value)
            {
              onChange(value);
            },
          fillColor: MaterialStateColor.resolveWith((states) => mainColor),
        ),
      ],
    ),
  );
}
