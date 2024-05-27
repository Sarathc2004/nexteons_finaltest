import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Textformfield extends StatelessWidget {
  Textformfield({
    Key? key,
    this.validator,
    this.controller,
    this.inputFormatters,
    this.hintText, // Add this line
    BorderSide? borderSide,
    this.fillColor,
    this.filled,
  })  : borderSide = borderSide ?? const BorderSide(),
        super(key: key);

  final TextEditingController? controller;
  final BorderSide borderSide;
  final Color? fillColor; // Make this final for immutability
  final bool? filled;
  final String? hintText; // Add this line
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      inputFormatters: inputFormatters,
      decoration: InputDecoration(
        fillColor: fillColor,
        filled: filled,
        hintText: hintText, // Add this line
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: borderSide,
        ),
      ),
      validator: validator,
    );
  }
}
