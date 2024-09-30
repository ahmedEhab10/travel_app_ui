import 'package:flutter/material.dart';

class CustomTextFaild extends StatelessWidget {
  const CustomTextFaild({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: 'Search places ',
        suffixIcon: Icon(Icons.search),
        labelStyle: TextStyle(
          color: Colors.black.withOpacity(0.8),
          fontWeight: FontWeight.bold,
        ),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.black,
            width: 2,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            color: Colors.black.withOpacity(0.3),
            width: 2,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            color: Colors.white,
            width: 3,
          ),
        ),
      ),
    );
  }
}
