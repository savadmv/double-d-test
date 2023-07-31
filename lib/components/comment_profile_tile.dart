import 'package:double_d_test/components/post_menu.dart';
import 'package:double_d_test/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CommentProfileTile extends StatelessWidget {
  const CommentProfileTile({super.key, required this.isVerified, required this.image});
  final String image;

  final bool isVerified;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading:  CircleAvatar(
        backgroundColor: Colors.orange,
        foregroundImage: AssetImage(image),
      ),
      title: Row(
        children:  [
          const Text(
            "안녕 나 응애 ",
            style: TextStyle(color: AppColors.n10, fontSize: 14),
          ),
          const SizedBox(
            width: 3,
          ),
          isVerified?const Icon(
            Icons.check_circle_sharp,
            color: AppColors.pops,
          ):const SizedBox(),
          const SizedBox(
            width: 3,
          ),
          const Text("1일전 ", style: TextStyle(color: AppColors.n5, fontSize: 10)),
        ],
      ),
      trailing: const ThreeDote(size: 4,),
    );
  }
}
