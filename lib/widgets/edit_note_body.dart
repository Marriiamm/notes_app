import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.notee});
  final NoteModel notee;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(height: 30,),
          CustomAppBar(
            onPressed: (){},
            barTitle: "Edit Note",
            icon: Icons.check,
          ),
          const SizedBox(height: 20,),
          const CustomField(
                hint: "Title",
                maxLines: 1,
              ),
          const SizedBox(height: 16,),
              const CustomField(
                hint: "Content",
                maxLines: 5,
              ),
        ],
      ),
    );
  }
}