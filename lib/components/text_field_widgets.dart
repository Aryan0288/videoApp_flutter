import 'package:flutter/material.dart';

class TextFieldWidgets extends StatelessWidget {

  final String hintText;
  final TextEditingController controller;
  final Widget icon;

  const TextFieldWidgets({super.key,
    required this.controller,
    required this.hintText,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.number,

      style: const TextStyle(fontSize: 16),
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: icon,
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none
        )
      ),
    );
  }
}
