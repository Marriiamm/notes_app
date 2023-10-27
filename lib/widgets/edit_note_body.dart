import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/text_field.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(height: 30,),
          CustomAppBar(
            barTitle: "Edit Note",
            icon: Icons.check,
          ),
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