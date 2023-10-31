import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/create_notes_cubit/create_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_app_bar.dart';
import 'package:notes_app/widgets/edit_note_color_list.dart';
import 'package:notes_app/widgets/text_field.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.notee});
  final NoteModel notee;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title ,content;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(height: 30,),
          CustomAppBar(
            onPressed: (){
              widget.notee.title = title ?? widget.notee.title;
              widget.notee.content = content ?? widget.notee.content;
              widget.notee.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            barTitle: "Edit Note",
            icon: Icons.check,
          ),
          const SizedBox(height: 20,),
           CustomField(
                onChanged: (value){
                  title =value;
                },
                hint: widget.notee.title,
                maxLines: 1,
              ),
          const SizedBox(height: 16,),
              CustomField(
                onChanged: (value){
                  content =value;
                },
                hint: widget.notee.content,
                maxLines: 5,
              ),

              EditNoteColor(
                notee: widget.notee,),
        ],
      ),
    );
  }
}


