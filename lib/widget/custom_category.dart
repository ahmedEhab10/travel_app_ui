import 'package:flutter/material.dart';

class CustomCategory extends StatelessWidget {
  const CustomCategory({super.key, required this.category_text});
  final String category_text;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 130,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: Colors.black),
      child: Center(
        child: Text(
          category_text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
