import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final List<BottomNavigationBarItem> items;
  final int currentIndex;
  final ValueChanged<int> onTap;
  final double height; // Customize the height here

  const CustomBottomNavigationBar({
    Key? key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
    this.height = 70.0, // Default height, you can change it
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: EdgeInsets.zero,
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 2.0,
          ),
        ],
      ),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: items,
          currentIndex: currentIndex,
          onTap: onTap,
        ),
      ),
    );
  }
}
