import 'package:flutter/material.dart';

class AppBarTodo extends StatelessWidget {
  const AppBarTodo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
          children: [Text('Hi Sreerag',style: TextStyle(fontSize: 30),), Text('You have 3 tasks today',style: TextStyle(fontSize: 18),)],
        )),
        IconButton(
          tooltip: 'settings',
          onPressed: () {}, icon: const Icon(Icons.settings,size: 36,))
      ],
    );
  }
}
