import 'package:flutter/material.dart';

class Icon extends StatelessWidget {
  final String icon;

  const Icon({
    Key? key,
    required this.icon,}) : super(key: key);
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
          icon,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
    );
  }
}