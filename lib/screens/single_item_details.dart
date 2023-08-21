import 'package:flutter/material.dart';

class SingleItemDetails extends StatelessWidget {
  const SingleItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconTheme.of(context),
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
        title: Row(
          children: [Text("Plants"), Spacer(), Icon(Icons.notifications)],
        ),
      ),
      body: Column(children: [
        Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                clipBehavior: Clip.none,
                color: Colors.red,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: <Widget>[
                    //Stack helps to overlap widgets
                  ],
                ),
              ),
            ]))
      ]),
    );
  }
}
