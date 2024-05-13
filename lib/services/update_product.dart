
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class UpdateProduct{

  Future<ProductModel> updateProduct({
    required String id,
    required String title,
    required String price,
    required String desc,
    required String image,
    required String category,
  }) async {
    Map<String, dynamic> data = await Api().post(
      url: 'https://fakestoreapi.com/products',
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
    return ProductModel.fromJson(data);
  }

}