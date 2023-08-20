import 'package:flutter/material.dart';

abstract class CardGenerator {
  Card generate();
}

class SmallContainerGenerator implements CardGenerator {
  @override
  Card generate() {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.grey.shade800,
      shadowColor: Colors.grey.shade800,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      child: SizedBox(
        height: 50,
        width: 30,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [Icon(Icons.thermostat), Text("Temp"), Text("24 C")]),
      ),
    );
  }
}

class MediumForegroundShadowCard extends MediumCardGenerator {
  @override
  Card generate() {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.grey.shade800,
      shadowColor: Colors.grey.shade800,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      child: Stack(children: [
        SizedBox(
          height: 105,
          width: 80,
          child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [Icon(Icons.thermostat), Text("Temp"), Text("24 C")]),
        ),
      ]),
    );
  }
}

class MediumCardGenerator implements CardGenerator {
  @override
  Card generate() {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.grey.shade800,
      shadowColor: Colors.grey.shade800,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      child: SizedBox(
        height: 105,
        width: 80,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [Icon(Icons.thermostat), Text("Temp"), Text("24 C")]),
      ),
    );
  }
}

class LargeCardGenerator implements CardGenerator {
  @override
  Card generate() {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.grey.shade800,
      shadowColor: Colors.grey.shade800,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 5,
      child: SizedBox(
        height: 140,
        width: 90,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [Icon(Icons.thermostat), Text("Temp"), Text("24 C")]),
      ),
    );
  }
}
