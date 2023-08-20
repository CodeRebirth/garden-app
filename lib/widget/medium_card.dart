import 'package:flutter/material.dart';

class MediumCard extends StatelessWidget {
  const MediumCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 50,
      color: Colors.red,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [Icon(Icons.thermostat), Text("Temp"), Text("24 C")]),
    );
  }
}
