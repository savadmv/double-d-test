import 'package:double_d_test/components/post_menu.dart';
import 'package:flutter/material.dart';

class CommentMenu extends StatelessWidget {
  const CommentMenu(
      {super.key, required this.favCount, required this.commentCount});

  final int favCount;
  final int commentCount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0, top: 0, bottom: 4),
      child: Row(
        children: [
          favCount > 0 ? const Favorite(size: 25,) : const SizedBox(),
          commentCount > 0 ? const Comment(size: 25,) : const SizedBox(),
        ],
      ),
    );
  }
}
