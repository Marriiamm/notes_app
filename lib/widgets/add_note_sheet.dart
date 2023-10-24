import 'package:flutter/material.dart';
import 'package:notes_app/widgets/text_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(25.0),
      child: Column(
        children: [
          CustomField(),
        ],
      ),
    );
  }
}