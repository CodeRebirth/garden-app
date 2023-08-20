import 'package:flutter/material.dart';
import 'package:ui/widget/appbar.dart';
import 'package:ui/widget/customchip.dart';
import 'package:ui/widget/heading.dart';
import 'package:ui/widget/card_gen_factory.dart';
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
  MediumForegroundShadowCard mediumCardGenerator = MediumForegroundShadowCard();
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
            Container(
              height: 400,
              child: Stack(children: [
                // Container(
                //   height: 450,
                //   width: double.infinity,
                //   color: Colors.red,
                // ),
                const AppSlider(),
                Positioned(
                  top: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          children: const [
                            Padding(padding: EdgeInsets.all(10), child: Text("My Garden", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16))),
                            Spacer(),
                            Padding(
                                padding: EdgeInsets.all(10),
                                child: Icon(
                                  Icons.notifications,
                                  color: Colors.white,
                                ))
                          ],
                        ),
                      ),
                      const HeadingWidget(
                        title: "Matt's Garden",
                        colors: Colors.white,
                      ),
                      Container(
                        height: 35,
                        width: MediaQuery.of(context).size.width,
                        margin: const EdgeInsets.only(left: 10),
                        child: ListView.separated(
                          separatorBuilder: (context, index) => const SizedBox(
                            width: 5,
                          ),
                          itemCount: 5,
                          itemBuilder: (ctx, index) => Customchip(label: plants[index]),
                          scrollDirection: Axis.horizontal,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 30,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        mediumCardGenerator.generate(),
                        SizedBox(
                          width: 10,
                        ),
                        mediumCardGenerator.generate(),
                        SizedBox(
                          width: 10,
                        ),
                        mediumCardGenerator.generate()
                      ],
                    ),
                  ),
                )
              ]),
            ),
            Padding(padding: EdgeInsets.all(10), child: Text("Growing calender", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16))),
          ],
        ),
      ),
    );
  }
}
