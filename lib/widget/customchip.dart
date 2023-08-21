import 'package:flutter/material.dart';

class Customchip extends StatelessWidget {
  final String label;
  const Customchip({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
      padding: EdgeInsets.zero,
    );
  }
}
