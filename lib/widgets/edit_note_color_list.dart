import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/color_list_view.dart';

class EditNoteColor extends StatefulWidget {
  const EditNoteColor({super.key, required this.notee});

  final NoteModel notee;

  @override
  State<EditNoteColor> createState() => _EditNoteColorState();
}

class _EditNoteColorState extends State<EditNoteColor> {

  late int currentIndex ;
  @override
  void initState() {
    currentIndex =kcolorss.indexOf(Color(widget.notee.color));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kcolorss.length,
        itemBuilder: (context,index) { 
          return  Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: GestureDetector(
              onTap: (){
                currentIndex = index;
                widget.notee.color =kcolorss[index].value;
                setState(() {       
                });  
              },
              child: ColorItem(
                isActive: currentIndex == index, 
                color: kcolorss[index],
              ),
            ),
          );
         },),
    );
  }
}