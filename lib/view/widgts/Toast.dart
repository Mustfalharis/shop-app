


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void shotToast({required String text, ToastStates? state,})=>  Fluttertoast.showToast(
  msg:text,
  textColor: Colors.white, // message
  toastLength: Toast.LENGTH_SHORT, // length
  gravity: ToastGravity.BOTTOM,
  backgroundColor: chooseToastColor(state),
  timeInSecForIosWeb: 5,
  fontSize: 16,// location
  // duration
);
enum ToastStates{SUCCESS,ERROR,WARNIG}

Color? chooseToastColor(ToastStates? state) {
  Color color=Colors.red;
  switch (state)
  {
    case ToastStates.SUCCESS:
      {
        color = Colors.green;
        break;
      }
    case ToastStates.ERROR:
      {
        color = Colors.red;
        break;
      }
    case ToastStates.WARNIG:
      {
        color = Colors.amber;
        break;
      }
  }
  return color;
}