import 'package:flutter/material.dart';

class Resuse extends StatelessWidget {
  Resuse({required this.colour, required this.wildcard});
  final Color colour;
  final Widget wildcard;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: wildcard,
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        // color: Color(0XFF1D1E33),
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
