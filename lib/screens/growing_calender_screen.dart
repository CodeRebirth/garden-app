import 'package:flutter/material.dart';

import '../widget/growing_calender.dart';

class GrowingCalenderScreen extends StatefulWidget {
  const GrowingCalenderScreen({super.key});

  @override
  State<GrowingCalenderScreen> createState() => _GrowingCalenderState();
}

class _GrowingCalenderState extends State<GrowingCalenderScreen> {
  @override
  Widget build(BuildContext context) {
    return const MyTabBar();
  }
}

class MyTabBar extends StatefulWidget {
  const MyTabBar({super.key});

  @override
  State<MyTabBar> createState() => _MyTabBarState();
}

class _MyTabBarState extends State<MyTabBar> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this); // Change the length to the number of tabs you need
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        SizedBox(
          height: 50,
        ),
        Container(
            height: 130,
            width: MediaQuery.of(context).size.width, // Set the desired height
            child: const GrowingCalender()),
        TabBar(
          labelColor: Colors.black,
          indicator: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.white,
            Colors.green.shade100,
            Colors.green.shade700,
          ], end: Alignment.bottomCenter, begin: Alignment.topCenter)),
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'Tab 1',
            ),
            Tab(text: 'Tab 2'),
            Tab(text: 'Tab 3'),
          ],
        ),
        Expanded(
            child: TabBarView(controller: _tabController, children: [
          Center(child: Text('Content for Tab 1')),
          Center(child: Text('Content for Tab 2')),
          Center(child: Text('Content for Tab 3')),
        ]))
      ]),
    );
  }
}
