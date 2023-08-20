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
            SizedBox(
              height: 370,
              child: Stack(children: [
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
                  bottom: 0,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        mediumCardGenerator.generate(
                          Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [Icon(Icons.thermostat), Text("Temp"), Text("24°C")]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        mediumCardGenerator.generate(
                          Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [Icon(Icons.thermostat), Text("Temp"), Text("24°C")]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        mediumCardGenerator.generate(
                          Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [Icon(Icons.thermostat), Text("Temp"), Text("24°C")]),
                        )
                      ],
                    ),
                  ),
                )
              ]),
            ),
            SizedBox(
              height: 20,
            ),
            const Padding(padding: EdgeInsets.all(10), child: Text("Growing calender", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16))),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SmallContainerGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("Mon"),
                        Text("12"),
                        Text("°"),
                      ],
                    )),
                    SmallContainerGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("Mon"),
                        Text("12"),
                        Text("°"),
                      ],
                    )),
                    SmallContainerGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("Mon"),
                        Text("12"),
                        Text("°"),
                      ],
                    )),
                    SmallContainerGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("Mon"),
                        Text("12"),
                        Text("°"),
                      ],
                    )),
                    SmallContainerGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("Mon"),
                        Text("12"),
                        Text("°"),
                      ],
                    )),
                    SmallContainerGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("Mon"),
                        Text("12"),
                        Text("°"),
                      ],
                    )),
                    SmallContainerGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text("Mon"),
                        Text("12"),
                        Text("°"),
                      ],
                    ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(padding: EdgeInsets.all(10), child: Text("Require attention (6)", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16))),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    LargeCardGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          "https://images.unsplash.com/photo-1587334274535-5f82e7e55dc0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80",
                          height: 80,
                          width: 80,
                        ),
                        Text("Tomato"),
                        Text("°Need watering")
                      ],
                    )),
                    LargeCardGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          "https://images.unsplash.com/photo-1587334274535-5f82e7e55dc0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80",
                          height: 80,
                          width: 80,
                        ),
                        Text("Tomato"),
                        Text("°Need watering")
                      ],
                    )),
                    LargeCardGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          "https://images.unsplash.com/photo-1587334274535-5f82e7e55dc0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80",
                          height: 80,
                          width: 80,
                        ),
                        Text("Tomato"),
                        Text("°Need watering")
                      ],
                    )),
                    LargeCardGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          "https://images.unsplash.com/photo-1587334274535-5f82e7e55dc0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80",
                          height: 80,
                          width: 80,
                        ),
                        Text("Tomato"),
                        Text("°Need watering")
                      ],
                    )),
                    LargeCardGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          "https://images.unsplash.com/photo-1587334274535-5f82e7e55dc0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80",
                          height: 80,
                          width: 80,
                        ),
                        Text("Tomato"),
                        Text("°Need watering")
                      ],
                    )),
                    LargeCardGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          "https://images.unsplash.com/photo-1587334274535-5f82e7e55dc0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80",
                          height: 80,
                          width: 80,
                        ),
                        Text("Tomato"),
                        Text("°Need watering")
                      ],
                    )),
                    LargeCardGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          "https://images.unsplash.com/photo-1587334274535-5f82e7e55dc0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=880&q=80",
                          height: 80,
                          width: 80,
                        ),
                        Text("Tomato"),
                        Text("°Need watering")
                      ],
                    )),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
