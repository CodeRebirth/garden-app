import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../widget/card_gen_factory.dart';

class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  bool isScanCompleted = false;
  void setScanCompletedTrue() {
    setState(() {
      isScanCompleted = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        decoration: const BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: NetworkImage("https://assets-cdn.workingnotworking.com/bx8puipsr2rf0deax2xrkmyr29yn"))),
      ),
      if (isScanCompleted == false)
        Positioned(
          top: 200,
          left: 0,
          right: 0,
          child: Container(
            margin: const EdgeInsets.all(14),
            height: 300,
            width: 300,
            child: Lottie.network("https://lottie.host/4a30d42b-e731-43ff-9fbe-676219d9fc6b/ezk9VQ9gu1.json"),
          ),
        ),
      if (isScanCompleted == false)
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
                        InkWell(
                          onTap: setScanCompletedTrue,
                          child: Container(
                            height: 70,
                            width: 70,
                            color: const Color.fromARGB(255, 1, 21, 38),
                            child: const Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    )),
                  ),
                ),
              ),
            ))),
      if (isScanCompleted == true) const ScanDetails(),
      if (isScanCompleted == true)
        Positioned(
            left: 0,
            right: 0,
            top: 160,
            child: Image.asset(
              "assets/basil.png",
              height: 130,
              width: 130,
            )),
    ]));
  }
}

class AddToGardenButton extends StatelessWidget {
  const AddToGardenButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
            backgroundColor: MaterialStateProperty.all(Colors.green.shade900),
            minimumSize: MaterialStateProperty.all(const Size(100, 50))),
        onPressed: () {},
        child: Text(
          "+ Add to my garden",
          style: Theme.of(context).textTheme.labelSmall!.copyWith(color: Colors.white),
        ));
  }
}

class ScanDetails extends StatelessWidget {
  const ScanDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 200,
      left: 0,
      right: 0,
      child: Container(
        margin: const EdgeInsets.all(13),
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
        height: 450,
        width: 300,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(13),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: Container(
              color: Colors.white.withOpacity(0.4),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 80,
                    ),
                    Text("Coriander", style: Theme.of(context).textTheme.labelSmall),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MediumCardGenerator().generate(const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.sunny), Text("III - IV")],
                        )),
                        MediumCardGenerator().generate(const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.sunny), Text("III - IV")],
                        )),
                        MediumCardGenerator().generate(const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.sunny), Text("III - IV")],
                        )),
                        MediumCardGenerator().generate(const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Icon(Icons.sunny), Text("III - IV")],
                        ))
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Align(alignment: Alignment.center, child: AddToGardenButton())
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
