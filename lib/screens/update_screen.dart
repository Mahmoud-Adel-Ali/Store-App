// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_linear_button.dart';
import 'package:store_app/widgets/custom_text_form_feild.dart';

class UpdateScreen extends StatelessWidget {
  UpdateScreen({super.key});
  static String id = 'update screen';

  String? productName;

  String? price;

  String? description;

  String? image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onPressed: () {},
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
    );
  }
}
