import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff22668D),
        onPressed: (){},
        child: const Icon(Icons.add),),
      body: const NotesViewBody(),
    );
  }
}

