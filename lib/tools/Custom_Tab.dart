import 'package:flutter/material.dart';

class Custom_Tab extends StatefulWidget{
  const Custom_Tab({required this.title,super.key});

  final String title;

  @override
  State<Custom_Tab> createState() => _CustomTabState();
}

class _CustomTabState extends State<Custom_Tab> {
  @override
  Widget build(BuildContext context){
    return TextButton(
          onPressed:(){},
      child: Text(widget.title,
      style:const TextStyle(fontSize: 15)
      ),
    );
  }
}