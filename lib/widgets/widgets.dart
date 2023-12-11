import 'package:flutter/material.dart';

class Section_header extends StatelessWidget {
  const Section_header({
    Key? key,
    required this.titleq,
    this.action = 'view more',
  }) : super(key: key);

  final String titleq;
  final String action;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          (titleq),
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        Text(action),
      ],
    );
  }
}
