import 'package:flutter/material.dart';
import 'package:notes_app/views/custom_app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal:24.0),
      child: Column(
        children: [
          SizedBox(height: 30,),
          CustomAppBar(),
          NotesItem(),
        ],
      ),
    );
  }
}

class NotesItem extends StatelessWidget {
  const NotesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff8ECDDD),
        borderRadius: BorderRadius.circular(16),
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text("Flutter Tips"),
            subtitle: const Text("focus ya it's your future"),
            trailing: IconButton(
              onPressed: (){}, 
              icon: const Icon(Icons.delete)),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom:10.0,right: 20.0),
            child: Text("october 24,2023",
            style: TextStyle(),),
          )
        ],
      ),
    );
  }
}

