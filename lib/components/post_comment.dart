import 'package:double_d_test/components/comment_body.dart';
import 'package:double_d_test/components/comment_menu.dart';
import 'package:double_d_test/components/comment_profile_tile.dart';
import 'package:flutter/cupertino.dart';

class PostComment extends StatelessWidget {
  const PostComment({super.key, required this.commentCount, required this.isVerified, required this.image});
  final int commentCount;
  final bool isVerified;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children:  [
         CommentProfileTile(isVerified: isVerified, image: image,),
        CommentBody(commentCount: commentCount,),

      ],
    );
  }
}
