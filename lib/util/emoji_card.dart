import 'package:flutter/material.dart';

class Emoticonface extends StatelessWidget {
  final String emoticonFace;

  const Emoticonface({
    Key? key,
    required this.emoticonFace,}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration (
        //  color: Colors.blue[600],
        color: Colors.white,
        borderRadius: BorderRadius.circular(12)
      ),
        padding: EdgeInsets.all(12),
        child: Text(
          emoticonFace,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
    );
  }
}