


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:social_app/utils/theme.dart';

class SizeList extends StatefulWidget {

  @override
  State<SizeList> createState() => _SizeListState();
}

class _SizeListState extends State<SizeList> {
  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }
  final List<String> sizeList = ['S', 'M', 'L', 'XL', 'XXL'];

  var currentSeletected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.symmetric(horizontal: 25,vertical:10),
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index)
          {
           return  Container(
             child: GestureDetector(
               onTap: ()
               {
                 setState(()
                 {
                   currentSeletected=index;
                 });
               },
               child: Container(
                 padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                 decoration: BoxDecoration(
                   color: Get.isDarkMode
                       ? currentSeletected == index
                       ? pinkClr.withOpacity(0.4)
                       : Colors.black
                       : currentSeletected == index
                       ? mainColor.withOpacity(0.4)
                       : Colors.white,
                   borderRadius: BorderRadius.circular(15),
                   border: Border.all(
                     color: Colors.grey.withOpacity(0.4),
                     width: 2,
                   ),
                 ),
                 child: Text(
                   sizeList[index],
                   style: TextStyle(
                     color: Get.isDarkMode
                         ? currentSeletected == index
                         ? Colors.white
                         : Colors.white
                         : currentSeletected == index
                         ? Colors.black
                         : Colors.black,
                     fontWeight: FontWeight.bold,
                   ),
                 ),
               ),
             ),
           );
          },
          separatorBuilder: (context,index)=>const SizedBox(width: 10,),
          itemCount: sizeList.length,
      ),
    );
  }
}
