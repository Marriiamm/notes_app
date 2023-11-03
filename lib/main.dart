import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/create_notes_cubit/create_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/simple_bloc_observer.dart';
import 'package:notes_app/splash.dart';
//import 'package:notes_app/views/notes_view.dart';

void main() async{
  
  initializeDateFormatting();
  await Hive.initFlutter();
  Bloc.observer =SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: "Dosis",
          scaffoldBackgroundColor: Colors.white,
        ),
        home:const SplashView(),
      ),
    );
  }
}