import 'package:flutter/material.dart';
import 'package:notes_app/views/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:24.0),
      child: Column(
        children: [
          SizedBox(height: 30,),
          CustomAppBar(),
        ],
      ),
    );
  }
}

