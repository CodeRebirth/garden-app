import 'package:flutter/material.dart';
import 'package:ui/widget/heading.dart';

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
          children: const [Text("Plants"), Spacer(), Icon(Icons.notifications)],
        ),
      ),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Padding(
            padding: const EdgeInsets.all(4.0),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Container(
                width: 180,
                height: 270,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1506184155123-73f3a6dfc2fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1064&q=80"))),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                width: 180,
                height: 270,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://images.unsplash.com/photo-1506184155123-73f3a6dfc2fc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1064&q=80"))),
              ),
            ])),
        HeadingWidget(
          title: "Basil",
          colors: Colors.green[900],
        ),
        Container(
          margin: EdgeInsets.only(left: 12),
          height: 30,
          width: 150,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.green[800],
          ),
          child: Text("Ready to be picked", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        )
      ]),
    );
  }
}
