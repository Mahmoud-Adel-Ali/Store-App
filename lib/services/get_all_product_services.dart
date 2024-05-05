import 'dart:convert';

import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class GetAllProduct {
  Future<List<ProductModel>> getProducts() async {
    http.Response response =
        await http.get(Uri.parse("https://fakestoreapi.com/products"));
    if (response.statusCode == 200) {
      List<ProductModel> products = [];
      List<dynamic> data = json.decode(response.body);
      for (int i = 0; i < data.length; i++) {
        products.add(ProductModel.fromJson(data[i]));
      }
      return products;
    } else {
      throw Exception(
          'Failed to load products , problem with status code ${response.statusCode}');
    }
  }
}
