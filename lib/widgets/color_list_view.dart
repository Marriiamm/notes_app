import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive ?  CircleAvatar(
      backgroundColor: const Color.fromARGB(255, 169, 168, 168),
      radius: 30,
      child: CircleAvatar(
        radius: 28,
        backgroundColor: color,),
    )
      : CircleAvatar(
      radius: 28,
      backgroundColor: color,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {

  int currentIndex = 0;
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
                BlocProvider.of<AddNoteCubit>(context).color = kcolorss[index];
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