import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      title: 'Garden App',
      theme: ThemeData(
          fontFamily: GoogleFonts.poppins().fontFamily,
          primarySwatch: Colors.green,
          iconTheme: IconThemeData(color: Colors.green[900]),
          textTheme: TextTheme(displaySmall: TextStyle(color: Colors.green.shade900, fontSize: 10, fontWeight: FontWeight.bold))),
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
              height: 390,
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
                          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, crossAxisAlignment: CrossAxisAlignment.center, children: [
                            Spacer(),
                            Icon(Icons.device_thermostat_outlined),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Temp",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("24°C", style: TextStyle(color: Colors.green[900], fontWeight: FontWeight.bold, fontSize: 17)),
                            Spacer()
                          ]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        mediumCardGenerator.generate(
                          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, crossAxisAlignment: CrossAxisAlignment.center, children: [
                            Spacer(),
                            Icon(Icons.wb_sunny_outlined),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Light",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("76%", style: TextStyle(color: Colors.green[900], fontWeight: FontWeight.bold, fontSize: 17)),
                            Spacer()
                          ]),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        mediumCardGenerator.generate(
                          Column(mainAxisAlignment: MainAxisAlignment.spaceAround, crossAxisAlignment: CrossAxisAlignment.center, children: [
                            Spacer(),
                            Icon(Icons.water_drop),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Humidity",
                              style: Theme.of(context).textTheme.displaySmall,
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("42%", style: TextStyle(color: Colors.green[900], fontWeight: FontWeight.bold, fontSize: 17)),
                            Spacer()
                          ]),
                        )
                      ],
                    ),
                  ),
                )
              ]),
            ),
            const SizedBox(
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
                      children: [
                        Text(
                          "Mon",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Text(
                          "12",
                          style: TextStyle(color: Colors.green[900], fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Text("°"),
                      ],
                    )),
                    SmallContainerGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Mon",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Text(
                          "12",
                          style: TextStyle(color: Colors.green[900], fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Text("°"),
                      ],
                    )),
                    SmallContainerGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Mon",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Text(
                          "12",
                          style: TextStyle(color: Colors.green[900], fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Text("°"),
                      ],
                    )),
                    SmallContainerGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Mon",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Text(
                          "12",
                          style: TextStyle(color: Colors.green[900], fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Text("°"),
                      ],
                    )),
                    SmallContainerGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Mon",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Text(
                          "12",
                          style: TextStyle(color: Colors.green[900], fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Text("°"),
                      ],
                    )),
                    SmallContainerGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Mon",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Text(
                          "12",
                          style: TextStyle(color: Colors.green[900], fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                        Text("°"),
                      ],
                    )),
                    SmallContainerGenerator().generate(Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "Mon",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        Text(
                          "12",
                          style: TextStyle(color: Colors.green[900], fontWeight: FontWeight.bold, fontSize: 17),
                        ),
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
