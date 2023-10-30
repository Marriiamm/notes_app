import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({super.key, required this.hint,  this.maxLines =1, this.onSaved, this.onChanged});

  final String hint;
  final int maxLines ;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value){
        if(value?.isEmpty ?? true){
          return "field is required";
        }else{return null;}
      },
      cursorColor: Color.fromARGB(255, 47, 145, 178),
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
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