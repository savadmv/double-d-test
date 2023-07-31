import 'package:double_d_test/components/hash_tag.dart';
import 'package:double_d_test/components/post_comment.dart';
import 'package:double_d_test/components/post_description.dart';
import 'package:double_d_test/components/post_image.dart';
import 'package:double_d_test/components/profile_tile.dart';
import 'package:double_d_test/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'comment_text_field.dart';

class PostBody extends StatelessWidget {
  const PostBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: AppColors.white,
        child: Column(
          children: const [
            ProfileTile(),
            PostDescription(),
            PostImage(),
            Divider(thickness: 3,color: AppColors.n1,),
            PostComment(commentCount: 4, isVerified: true, image: 'assets/profile/profile-three.png',),
            Divider(thickness: 2,color: AppColors.n1,),
            CommentTextField(),
          ],
        ),
      ),
    );
  }
}
