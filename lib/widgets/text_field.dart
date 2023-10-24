import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Color.fromARGB(255, 47, 145, 178),
      decoration: InputDecoration(
        hintText: "Title",
        hintStyle: TextStyle(
          fontSize: 19
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            width: 2.0,
            color: Color.fromARGB(255, 47, 145, 178)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: const BorderSide(
            width: 2.0,
            color: Color.fromARGB(255, 47, 145, 178)),
        )
      ),
    );
  }
}