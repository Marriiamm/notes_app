import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: const Column(
        children: [
          SizedBox(height: 30,),
          CustomAppBar(),
          SizedBox(height: 20,),
          CustomField(
                hint: "Title",
                maxLines: 1,
              ),
          SizedBox(height: 16,),
              CustomField(
                hint: "Content",
                maxLines: 5,
              ),
        ],
      ),
    );
  }
}