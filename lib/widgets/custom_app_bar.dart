import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.barTitle, required this.icon, this.onPressed});
  final String barTitle;
  final IconData icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(barTitle,
        style: const TextStyle(
          fontSize: 25,
        ),),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.withOpacity(0.06)
          ),
          child:  IconButton(
            onPressed: onPressed,
            icon:Icon(icon), )),
      ],
    );
  }
}