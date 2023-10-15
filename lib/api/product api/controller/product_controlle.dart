import 'dart:convert';
import 'package:all_teckstack/api/product%20api/model/product_model.dart';
import 'package:http/http.dart'as http;

class ProductController{
  final baseUrl = "https://dummyjson.com";
  final endPoint = "products";

  Future<ProductsModel?> productDataApi() async {
    final response = await http.get(Uri.parse("$baseUrl/$endPoint"));

    try{
      if(response.statusCode==200){
        var decodeResponse = jsonDecode(response.body);
        var productData = ProductsModel.fromJson(decodeResponse);
        return productData;
      }
      else{
        return ProductsModel();
      }
    }

    catch(e){
      return ProductsModel();
    }
  }
}