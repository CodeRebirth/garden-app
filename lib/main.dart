import 'package:flutter/material.dart';
import 'package:ui/widget/appbar.dart';
import 'package:ui/widget/customchip.dart';
import 'package:ui/widget/heading.dart';
import 'package:ui/widget/medium_card.dart';
import 'package:ui/widget/slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List plants = [
    "Rose",
    "Dandellions",
    "Jasmine",
    "Marigold",
    "Money Plant",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                const AppSlider(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.all(10), child: Text("My Garden", style: TextStyle(color: Colors.white, fontSize: 16))),
                        Spacer(),
                        Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.notifications,
                              color: Colors.white,
                            ))
                      ],
                    ),
                    const HeadingWidget(
                      title: "Matt's Garden",
                      colors: Colors.white,
                    ),
                    Container(
                      height: 35,
                      margin: EdgeInsets.only(left: 10),
                      child: ListView.separated(
                        separatorBuilder: (context, index) => SizedBox(
                          width: 5,
                        ),
                        itemCount: 5,
                        itemBuilder: (ctx, index) => Customchip(label: plants[index]),
                        scrollDirection: Axis.horizontal,
                      ),
                    ),
                  ],
                )
              ],
            ),
            const HeadingWidget(title: "Hot Categories"),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Wrap(
                spacing: 5,
                children: const [Customchip(label: "Rose"), Customchip(label: "Orchid"), Customchip(label: "Room Plants"), Customchip(label: "Dandellion")],
              ),
            ),
            const HeadingWidget(title: "Trending Plants"),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Wrap(
                spacing: 5,
                runSpacing: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
