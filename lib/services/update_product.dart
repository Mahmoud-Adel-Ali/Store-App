import 'package:flutter/material.dart';
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProduct {
  Future<ProductModel> updateProduct({
    required dynamic id,
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    debugPrint('product id : $id');
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
      body: {
        "id": id,
        "title": title,
        "price": price,
        "desc": desc,
        "image": image,
        "category": category,
      },
      token: null,
    );
    debugPrint(data.toString());
    return ProductModel.fromJson(data);
  }
}
