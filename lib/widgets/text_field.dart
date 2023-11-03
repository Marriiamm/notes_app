import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({super.key, required this.hint,  this.maxLines =1, this.onSaved, this.onChanged});

  final String hint;
  final int maxLines ;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left:10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 225, 240, 239),
        borderRadius: BorderRadius.circular(20)
      ),
      child: TextFormField(
        onChanged: onChanged,
        onSaved: onSaved,
        validator: (value){
          if(value?.isEmpty ?? true){
            return "field is required";
          }else{return null;}
        },
        cursorColor: const Color.fromARGB(255, 47, 145, 178),
        maxLines: maxLines,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            fontSize: 19
          ),
          border: InputBorder.none,
          
        ),
      ),
    );
  }
}