import 'package:flutter/material.dart';

class TextFieldC extends StatelessWidget {
  const TextFieldC({super.key, required this.callIdController});

  final TextEditingController callIdController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.grey[300],
      ),
      child: TextField(
        controller: callIdController,
        decoration: InputDecoration(
          hintText: "Enter meeting id",
          filled: true,
          fillColor: Colors.grey[300],
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(15),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        ),
      ),
    );
  }
}
