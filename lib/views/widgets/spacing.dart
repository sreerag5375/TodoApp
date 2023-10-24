import 'package:flutter/material.dart';

class Spacing extends StatelessWidget {
  final double space;
  const Spacing({super.key, required this.space});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: space,
    );
  }
}
