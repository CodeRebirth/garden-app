import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Scanner extends StatelessWidget {
  const Scanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("https://assets-cdn.workingnotworking.com/bx8puipsr2rf0deax2xrkmyr29yn"))),
      ),
      Positioned(
        top: 200,
        left: 0,
        right: 0,
        child: Container(
          margin: EdgeInsets.all(14),
          height: 300,
          width: 300,
          child: Lottie.network("https://lottie.host/4a30d42b-e731-43ff-9fbe-676219d9fc6b/ezk9VQ9gu1.json"),
        ),
      ),
      Positioned(
          bottom: 30,
          left: 0,
          right: 0,
          child: Center(
              child: Container(
            width: 350,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  blurRadius: 10,
                  spreadRadius: 5,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 10,
                  sigmaY: 10,
                ),
                child: Container(
                  color: Colors.white.withOpacity(0.3),
                  child: Center(
                      child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.network(
                          "https://assets-cdn.workingnotworking.com/bx8puipsr2rf0deax2xrkmyr29yn",
                          height: 90,
                          width: 90,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Coriander", style: Theme.of(context).textTheme.labelSmall, softWrap: true),
                          Row(
                            children: [
                              Text(
                                "Healthy",
                                style: Theme.of(context).textTheme.labelSmall,
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text("Water It", style: Theme.of(context).textTheme.labelSmall)
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 70,
                        width: 70,
                        color: const Color.fromARGB(255, 1, 21, 38),
                        child: const Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                        ),
                      )
                    ],
                  )),
                ),
              ),
            ),
          )))
    ]));
  }
}
