import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {
  final String title;
  final Color? colors;
  const HeadingWidget({
    Key? key,
    required this.title,
    this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(12),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.bold,
          color: colors ?? Colors.black,
        ),
      ),
    );
  }
}
