import 'package:http/http.dart' as http;
import 'package:social_app/utils/my_string.dart';

import '../models/category_model.dart';
import '../models/product_model.dart';
class CategoryServices
{
  static Future<List<String>>getCategory()
  async{
    var response= await http.get(Uri.parse('$baseUrl/products/categories'));
    if(response.statusCode==200)
    {
      var jsonData=response.body;
      return categoryModelFromJson(jsonData);
    }
    else
    {
      return throw Exception('failed to load product');
    }
  }
}

class AllCategorySercvises
{
  static Future<List<ProducModels>>getAllCatehory(String categoryNames )
  async{
    var response= await http.get(Uri.parse('$baseUrl/products/category/$categoryNames'));
    if(response.statusCode==200)
    {
      var jsonData=response.body;
      return producModelsFromJson(jsonData);
    }
    else
    {
      return throw Exception('failed to load product');
    }
  }
}