import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.notee});

  final NoteModel notee;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context){
            return const EditPage();
          }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24.0,bottom: 24.0,left: 10),
        decoration: BoxDecoration(
          color:  Color(notee.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title:  Text(notee.title,
              style: const TextStyle(
                fontSize: 30,
              ),),
              subtitle:  Padding(
                padding: const EdgeInsets.only(top:10.0),
                child: Text(notee.content,
                style: const TextStyle(
                  fontSize: 18,
                ),),
              ),
              trailing: IconButton(
                onPressed: (){
                  notee.delete();
                }, 
                icon: const Icon(Icons.delete,size: 30,)),
            ),
             Padding(
              padding: const EdgeInsets.only(right: 24.0,top:20 ),
              child: Text(notee.date,
              style: TextStyle(color: Colors.black.withOpacity(0.5)),),
            )
          ],
        ),
      ),
    );
  }
}

