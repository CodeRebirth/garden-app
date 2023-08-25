import 'package:flutter/material.dart';
import 'package:ui/screens/garden_page.dart';
import 'package:ui/screens/scanner.dart';
import 'package:ui/widget/custom_bottom_navbar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void onTap(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final screenList = [GardenPage(), Scanner(), Scanner(), Scanner()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CustomBottomNavigationBar(onTap: onTap, currentIndex: _selectedIndex, items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Shopping"),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: "Calender"),
          BottomNavigationBarItem(icon: Icon(Icons.qr_code_scanner), label: "Scanner")
        ]),
        body: screenList.elementAt(_selectedIndex));
  }
}
