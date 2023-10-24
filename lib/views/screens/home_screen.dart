import 'package:flutter/material.dart';
import 'package:todo_app/views/widgets/app_bar.dart';
import 'package:todo_app/views/widgets/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 12, right: 12),
        child: Column(
          children: [Spacing(space: 50), AppBarTodo()],
        ),
      ),
    );
  }
}
