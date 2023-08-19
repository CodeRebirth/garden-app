import 'package:flutter/material.dart';

class SingleProductContainer extends StatelessWidget {
  const SingleProductContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 200,
          width: 180,
          color: Colors.grey.shade300,
        ),
        Container(
          height: 50,
          width: 180,
          color: Colors.green.shade900,
        ),
        // Container(
        //   height: 50,
        //   width: 180,
        //   color: Colors.grey.shade200,
        // )
      ],
    );
  }
}
