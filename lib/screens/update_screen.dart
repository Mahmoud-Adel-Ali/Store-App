// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/models/product_model.dart';
import 'package:store_app/services/update_product.dart';
import 'package:store_app/widgets/custom_linear_button.dart';
import 'package:store_app/widgets/custom_text_form_feild.dart';

class UpdateScreen extends StatefulWidget {
  const UpdateScreen({super.key});
  static String id = 'update screen';

  @override
  State<UpdateScreen> createState() => _UpdateScreenState();
}

class _UpdateScreenState extends State<UpdateScreen> {
  String? productName;

  String? price;

  String? description;

  String? image;
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    ProductModel product =
        ModalRoute.of(context)!.settings.arguments as ProductModel;
    return ModalProgressHUD(
      inAsyncCall: isLoading,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Update Product",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
          ),
          backgroundColor: Colors.transparent,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  CustomTextFormField(
                    hintText: 'product name',
                    onChange: (data) {
                      productName = data;
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    hintText: 'price',
                    keyboardType: TextInputType.number,
                    onChange: (data) {
                      price = data;
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    hintText: 'description',
                    onChange: (data) {
                      description = data;
                    },
                  ),
                  const SizedBox(height: 20),
                  CustomTextFormField(
                    hintText: 'image',
                    onChange: (data) {
                      image = data;
                    },
                  ),
                  const SizedBox(height: 50),
                  CustomLinearButton(
                    onPressed: ()async {
                      isLoading = true;
                      setState(() {});
                      try {
                        await updateProduct(product);
                         debugPrint("success");
                      } catch (e) {
                        debugPrint(e.toString());
                      }
                      isLoading = false;
                      setState(() {});
                    },
                    child: const Text(
                      "Update",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Future<void> updateProduct(ProductModel product)async {
    await UpdateProduct().updateProduct(
        id: product.id,
        title: productName ?? product.title,
        price: price ?? product.price.toString(),
        desc: description ?? product.description,
        image: image ?? product.image,
        category: product.category);
  }
}
