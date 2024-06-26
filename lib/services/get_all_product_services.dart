
import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class GetAllProduct {
  Future<List<ProductModel>> getProducts() async {
    List<dynamic> data =
        await Api().get(url: "https://fakestoreapi.com/products");
    List<ProductModel> products = [];
    for (int i = 0; i < data.length; i++) {
      products.add(ProductModel.fromJson(data[i]));
    }
    return products;
  }
}
