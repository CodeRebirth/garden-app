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
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: IconTheme.of(context),
      titleTextStyle: Theme.of(context).textTheme.titleLarge,
      title: Row(
        children: [Text(title), Spacer(), Icon(Icons.notifications)],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
