import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_linear_button.dart';
import 'package:store_app/widgets/custom_text_form_feild.dart';

class UpdateScreen extends StatelessWidget {
  const UpdateScreen({super.key});
  static String id = 'update screen';
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
                CustomTextFormField(hintText: 'product name'),
                const SizedBox(height: 20),
                CustomTextFormField(hintText: 'price'),
                const SizedBox(height: 20),
                CustomTextFormField(hintText: 'description'),
                const SizedBox(height: 20),
                CustomTextFormField(hintText: 'image'),
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
