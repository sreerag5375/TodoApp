import 'package:flutter/material.dart';
import 'package:todo_app/const/app_colors.dart';
import 'package:todo_app/views/widgets/spacing.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Form(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  const Spacing(space: 40),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(), hintText: 'Task name'),
                  ),
                  const Spacing(space: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Task description'),
                  ),
                  const Spacing(space: 40),
                  SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  AppColors.SECONDARY_COLOR)),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Add Task',
                            style: TextStyle(
                                color: AppColors.PRIMARY_COLOR, fontSize: 18),
                          )))
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
