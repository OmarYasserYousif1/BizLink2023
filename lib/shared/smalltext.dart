import 'package:flutter/material.dart';

class smalltext extends StatelessWidget {
  final String text;
  final double fontsize;
  final Color color;
  final Alignment alignment;

  const smalltext({
    this.text = '',
    this.fontsize = 16,
    this.color = Colors.black,
    this.alignment = Alignment.topLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontsize,
          color: color,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
