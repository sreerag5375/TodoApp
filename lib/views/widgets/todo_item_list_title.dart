import 'package:flutter/material.dart';

class TodoItemsListHeading extends StatelessWidget {
  const TodoItemsListHeading({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Today's Task",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          'See All',
          style: TextStyle(fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
