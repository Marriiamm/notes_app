import 'package:flutter/material.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: const Color(0xff22668D),
      ),
      child: const Center(child: Text("Add" ,
      style: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ),)),
    );
  }
}