import 'package:http/http.dart' as http;
import 'package:social_app/utils/my_string.dart';

import '../models/product_model.dart';
class ProductServices
{
 static Future<List<ProducModels>>getProduct()
 async{
   var response= await http.get(Uri.parse('$baseUrl/products'));
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