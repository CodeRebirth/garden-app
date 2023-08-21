import 'package:flutter/material.dart';

abstract class CardGenerator {
  Card generate(Column widgets);
}

class SmallContainerGenerator implements CardGenerator {
  @override
  Card generate(Column widgets) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.grey.shade800,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      elevation: 1,
      child: SizedBox(height: 70, width: 45, child: widgets),
    );
  }
}

class MediumForegroundShadowCard extends MediumCardGenerator {
  @override
  Card generate(Column widgets) {
    return Card(
      color: Colors.white,
      shadowColor: Colors.grey.shade800,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: Stack(children: [
        SizedBox(height: 115, width: 95, child: widgets),
      ]),
    );
  }
}

class MediumCardGenerator implements CardGenerator {
  @override
  Card generate(Column widgets) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.grey.shade800,
      shadowColor: Colors.grey.shade800,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: SizedBox(
        height: 105,
        width: 80,
        child: widgets,
      ),
    );
  }
}

class LargeCardGenerator implements CardGenerator {
  @override
  Card generate(Column widgets) {
    return Card(
      color: Colors.white,
      surfaceTintColor: Colors.grey.shade800,
      shadowColor: Colors.grey.shade800,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: .5,
      child: SizedBox(height: 160, width: 130, child: widgets),
    );
  }
}
