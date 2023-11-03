import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/edit_note_body.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key, required this.notte});

  final NoteModel notte;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
        image: DecorationImage(
        image: AssetImage("assets/images/homee.png"), 
        fit: BoxFit.cover),
  ),
        child: EditNoteBody(notee: notte,)),
    );
  }
}