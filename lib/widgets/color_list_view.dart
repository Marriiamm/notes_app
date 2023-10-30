import 'package:flutter/material.dart';

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
  final List<Color> colorss = const[
    Color(0xffFFCC70),
    Color(0xffFFFADD),
    Color(0xffF5F7F8),
    Color(0xffF4CE14),
    Color(0xffAED2FF),
    Color(0xffF0997D),
    Color(0xff9DC08B),
    Color(0xffFFD9C0),
    Color(0xffFFBFBF),
    Color(0xff9DB2BF),
    Color(0xffF2E8C6),
    Color(0xffF5F5F5),
   
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colorss.length,
        itemBuilder: (context,index) { 
          return  Padding(
            padding: const EdgeInsets.only(right:8.0),
            child: GestureDetector(
              onTap: (){
                currentIndex = index;
                setState(() {
                  
                });
              },
              child: ColorItem(
                isActive: currentIndex == index, 
                color: colorss[index],
              ),
            ),
          );
         },),
    );
  }
}