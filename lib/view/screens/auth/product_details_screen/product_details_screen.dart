
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:social_app/models/product_model.dart';

import 'Image_sliders.dart';
import 'Size_list.dart';
import 'cart_add.dart';
import 'clohtes_info.dart';


class ProductDetailsScreen extends StatelessWidget {
  final ProducModels? producModels;
  ProductDetailsScreen({required this.producModels});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: context.theme.backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              ImageSliders(imageUrl: producModels!.image),
              ClothesInfo(
                  title: producModels!.title,
                  id: producModels!.id,
                rate: producModels!.rating.rate ,
                description: producModels!.description,
              ),
              SizeList(),
              AddCart(
                price: producModels!.price,
                productModels: producModels!,
              ),
            ],
          ),
        ),

      ),
    );
  }
}
