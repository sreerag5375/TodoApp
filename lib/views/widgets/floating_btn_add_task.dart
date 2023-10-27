import 'package:flutter/material.dart';
import 'package:todo_app/const/app_colors.dart';
import 'package:todo_app/const/app_sizes.dart';

class AddNewTaskButton extends StatelessWidget {
  const AddNewTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppSizes.PAGE_PADDING),
      child: SizedBox(
        width: double.infinity,
        height: 40,
        child: FloatingActionButton(
          onPressed: () {},
          shape: const RoundedRectangleBorder(),
          backgroundColor: AppColors.SECONDARY_COLOR,
          child: const Text(
            'Add New Task',
            style: TextStyle(fontSize: AppSizes.SUB_HEADING_FONT_SIZE, color: AppColors.PRIMARY_COLOR),
          ),
        ),
      ),
    );
  }
}
