import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final TextStyle? style;
  const CustomAppBar({
    Key? key,
    required this.title,
    this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      backgroundColor: Colors.green.shade900,
      title: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Text(
          title,
          style: style ?? const TextStyle(fontSize: 30, fontFamily: 'OpenSans'),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
