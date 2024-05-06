import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    List<ProductModel> products = [];

    List<dynamic> data = await Api()
        .get(url: "https://fakestoreapi.com/products/category/$categoryName");
    for (int i = 0; i < data.length; i++) {
      products.add(ProductModel.fromJson(data[i]));
    }
    return products;
  }
}
