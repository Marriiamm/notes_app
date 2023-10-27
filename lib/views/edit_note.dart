import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/edit_note_body.dart';
import 'package:notes_app/widgets/text_field.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteBody(),
    );
  }
}