import 'package:flutter/material.dart';

class CustomLinearButton extends StatelessWidget {
  const CustomLinearButton({
    required this.onPressed,
    required this.child,
   
    super.key,
  });
  final VoidCallback onPressed;
  final Widget child;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.purpleAccent,
      onTap: onPressed,
      child: Container(
        height: 50,
        padding: const EdgeInsets.all(8),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          gradient: const LinearGradient(
            colors: [
              Colors.purple,
              Colors.purple,
              Colors.purple,
            ],
            begin: Alignment(0.46, -0.89),
            end: Alignment(-0.46, 0.89),
          ),
        ),
        child: Center(child: child),
      ),
    );
  }
}