import 'package:flutter/material.dart';
import 'package:todo_app/const/app_colors.dart';

class PrimaryBtn extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const PrimaryBtn({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(AppColors.SECONDARY_COLOR)),
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: AppColors.PRIMARY_COLOR),
        ));
  }
}
