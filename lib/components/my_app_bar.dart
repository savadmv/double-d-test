import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class MyAppBar extends StatelessWidget  {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: AppColors.white,
      title: const Text(
        "자유톡",
        style: TextStyle(color: AppColors.n10, fontSize: 16),
      ),
      actions: [
        Image.asset('assets/icons/comment.png')
      ],
    );
  }
}
