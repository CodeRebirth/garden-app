import 'package:flutter/material.dart';

import 'card_gen_factory.dart';

class GrowingCalender extends StatelessWidget {
  const GrowingCalender({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(padding: EdgeInsets.all(10), child: Text("Growing calender", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16))),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                for (var i = 1; i <= 31; i++)
                  ExtraSmallContainerGenerator().generate(Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Mon",
                        style: Theme.of(context).textTheme.displaySmall,
                      ),
                      Text(
                        "$i",
                        style: TextStyle(color: Colors.green[900], fontWeight: FontWeight.bold, fontSize: 17),
                      ),
                      const Text("°"),
                    ],
                  )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
