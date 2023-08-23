import 'package:flutter/material.dart';

import 'card_gen_factory.dart';

class GrowingCalender extends StatelessWidget {
  const GrowingCalender({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(padding: EdgeInsets.all(10), child: Text("Growing calender", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16))),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ExtraSmallContainerGenerator().generate(Column(
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
                ExtraSmallContainerGenerator().generate(Column(
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
                ExtraSmallContainerGenerator().generate(Column(
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
                ExtraSmallContainerGenerator().generate(Column(
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
                ExtraSmallContainerGenerator().generate(Column(
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
                ExtraSmallContainerGenerator().generate(Column(
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
                ExtraSmallContainerGenerator().generate(Column(
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
      ],
    );
  }
}
