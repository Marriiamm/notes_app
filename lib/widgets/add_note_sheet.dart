import 'package:flutter/material.dart';
import 'package:notes_app/widgets/button.dart';
import 'package:notes_app/widgets/text_field.dart';

class AddNote extends StatelessWidget {
  const AddNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(25.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomField(
              hint: "Title",
              maxLines: 1,
            ),
            SizedBox(height: 16,),
            CustomField(
              hint: "Content",
              maxLines: 5,
            ),
            SizedBox(height: 60,),
            AddNoteButton(),
            SizedBox(height: 12,)
          ],
        ),
      ),
    );
  }
}

