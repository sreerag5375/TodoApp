import 'package:flutter/material.dart';
import 'package:todo_app/const/app_colors.dart';
import 'package:todo_app/views/widgets/spacing.dart';

class TodoItemList extends StatelessWidget {
  const TodoItemList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Container(
                color: Color.fromARGB(255, 230, 16, 16),
                child: const ListTile(
                  title: Text('Design home screen ui'),
                  subtitle:
                      Text('design and implement to home screen basic ui'),
                ),
              );
            },
            separatorBuilder: (context, index) => const Spacing(space: 14),
            itemCount: 10),
      ),
    );
  }
}
