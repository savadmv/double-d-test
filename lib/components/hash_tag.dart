import 'package:double_d_test/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';

class HashTag extends StatelessWidget {
  const HashTag({super.key, required this.tag});

  final String tag;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
          color: AppColors.n1,
          borderRadius:  BorderRadius.circular(12),
          border: Border.all(color: AppColors.n3, width: 1)),
      child:  Text(
        "$tag ",
        style: const TextStyle(color: AppColors.n7, fontSize: 12),
      ),
    );
  }
}
