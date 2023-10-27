import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_note.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context){
            return EditPage();
          }));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24.0,bottom: 24.0,left: 10),
        decoration: BoxDecoration(
          color: const Color(0xff8ECDDD),
          borderRadius: BorderRadius.circular(16),
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text("Flutter Tips",
              style: TextStyle(
                fontSize: 30,
              ),),
              subtitle: const Padding(
                padding: EdgeInsets.only(top:10.0),
                child: Text("focus ya it's your future",
                style: TextStyle(
                  fontSize: 18,
                ),),
              ),
              trailing: IconButton(
                onPressed: (){}, 
                icon: const Icon(Icons.delete,size: 30,)),
            ),
             Padding(
              padding: const EdgeInsets.only(right: 24.0,top:20 ),
              child: Text("october 24,2023",
              style: TextStyle(color: Colors.black.withOpacity(0.5)),),
            )
          ],
        ),
      ),
    );
  }
}

