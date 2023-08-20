import 'package:flutter/material.dart';

class AppSlider extends StatefulWidget {
  const AppSlider({super.key});

  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: BezierClipper(),
      child: SizedBox(
        height: MediaQuery.of(context).size.height / 2.8,
        width: double.infinity,
        child: Image.network(
          "https://images.unsplash.com/photo-1584204559709-ca7d413229eb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1770&q=80",
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class BezierClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var height = size.height;
    var width = size.width;
    var heightOffset = height * 0.12;
    Path path = Path();
    path.lineTo(0, height - heightOffset);
    path.quadraticBezierTo(width * 0.5, height, width, height - heightOffset);
    path.lineTo(width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
