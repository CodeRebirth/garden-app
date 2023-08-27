import 'package:flutter/material.dart';

import '../widget/card_gen_factory.dart';
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
    _tabController = TabController(length: 4, vsync: this); // Change the length to the number of tabs you need
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  final baseGenerator = ExtraSmallContainerGenerator();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 50,
        ),
        SizedBox(
            height: 130,
            width: MediaQuery.of(context).size.width, // Set the desired height
            child: const GrowingCalender()),
        TabBar(
          indicatorWeight: 2,
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: Colors.black,
          indicator: BoxDecoration(
              border: Border(bottom: BorderSide(width: 3, color: Colors.green.shade900)),
              gradient: LinearGradient(colors: [
                Colors.white,
                Colors.white,
                Colors.green.shade200,
              ], end: Alignment.bottomCenter, begin: Alignment.topCenter)),
          controller: _tabController,
          tabs: const [
            Tab(text: 'Vegetables'),
            Tab(text: 'Grass'),
            Tab(text: 'Herbs'),
            Tab(text: 'Flowers'),
          ],
        ),
        Expanded(
            child: TabBarView(controller: _tabController, children: const [
          Center(child: Text('Content for Tab 1')),
          Center(child: Text('Content for Tab 2')),
          Center(child: Text('Content for Tab 3')),
          Center(child: Text('Content for Tab 3')),
        ]))
      ]),
    );
  }
}
