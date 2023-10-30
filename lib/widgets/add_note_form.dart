import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/button.dart';
import 'package:notes_app/widgets/color_list_view.dart';
import 'package:notes_app/widgets/text_field.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomField(
            onSaved: (value) {
              title = value;
            },
            hint: "Title",
            maxLines: 1,
          ),
          const SizedBox(
            height: 16,
          ),
          CustomField(
            onSaved: (value) {
              content = value;
            },
            hint: "Content",
            maxLines: 5,
          ),
          const SizedBox(
            height: 25,
          ),
          const ColorsListView(),
          const SizedBox(
            height: 25,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return AddNoteButton(
                isLoading: state is AddNoteLoading ? true : false,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    DateTime noww = DateTime.now();
                    String currentDate = DateFormat.yMEd().format(noww);
                    var noteModel = NoteModel(
                        date: currentDate.toString(),
                        title: title!,
                        content: content!,
                        color: const Color(0xff7752FE).value);
                    BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              );
            },
          ),
          const SizedBox(
            height: 12,
          )
        ],
      ),
    );
  }
}



