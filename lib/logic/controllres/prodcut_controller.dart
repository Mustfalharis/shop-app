

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:social_app/models/product_model.dart';

import '../../services/product_services.dart';

class ProductController extends GetxController
{
  var productList=<ProducModels>[].obs;
  var favouritesList=<ProducModels>[].obs;
  var isLoading=true.obs;
  var isFavourite=false.obs;
  var stoarge=GetStorage();

  // Serach
  var searchList=<ProducModels>[].obs;
  TextEditingController searchTextController=TextEditingController();

  @override
  void onInit() {
    super.onInit();

    List? storedShoppings = stoarge.read<List>('isFavouritesList');

    if (storedShoppings != null) {
      favouritesList =
          storedShoppings.map((e) => ProducModels.fromJson(e)).toList().obs;
    }
    getProducts();
  }


 void getProducts()
  async{
     var products=await ProductServices.getProduct();
     try
     {
       isLoading(true);
       if(products.isNotEmpty)
         {
           productList.addAll(products);
         }
     }finally
     {
       isLoading(false);
     }
  }
  // Logic For Favourites Screen

  void addFavourites()
  {
    isFavourite.value=!isFavourite.value;
    update();
  }
  void mangeFavourites(int productId )
  async{
   var existingIndex=favouritesList.indexWhere((element) => element.id==productId);

    if(existingIndex>=0)
      {
        await stoarge.remove('isFavouritesList');
        favouritesList.removeAt(existingIndex);
      }
    else
      {
        favouritesList
            .add(
            productList.firstWhere((element) => element.id==productId));
         await stoarge.write('isFavouritesList', favouritesList);
      }
  }

  bool isFavourites(productId)
  {
    return favouritesList.any((element) => element.id==productId);
  }

  // Search Bar Logic

 void addSearchTowList(String searchName)
 {
   searchName=searchName.toLowerCase();

   searchList.value=productList.where((search) {
     var searchTitle=search.title.toLowerCase();
     var searchPrice=search.price.toString().toLowerCase();
     return searchTitle.contains(searchName) ||
         searchPrice.toString().contains(searchName);
   }).toList();
   update();
 }

 void clearSearch()
 {
   searchTextController.clear();
   addSearchTowList("");
 }

}