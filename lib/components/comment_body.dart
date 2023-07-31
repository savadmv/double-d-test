import 'package:double_d_test/components/post_comment.dart';
import 'package:flutter/cupertino.dart';

import '../utils/app_colors.dart';
import 'comment_menu.dart';

class CommentBody extends StatelessWidget {
  const CommentBody({super.key, required this.commentCount});
  final int commentCount;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 60, top: 8, bottom: 8),
      child: Column(
        children:  [
          const Text(
            "어머 제가 있던 테이블이 제일 반응이 좋았나보네요🤭 우짤래미님도 아시겠지만 저도 일반인 몸매 그 이상도 이하도 아니잖아요?! 그런 제가 기꺼이 도전해봤는데 생각보다 괜찮았어요! 오늘 중으로 라이브 리뷰 올라온다고 하니 꼭 봐주세용~!",
            style: TextStyle(color: AppColors.n9, fontSize: 12),
          ),
          CommentMenu(favCount: 1, commentCount: commentCount),
          commentCount>0?const PostComment(commentCount: 0, isVerified: false, image: 'assets/profile/profile-two.png',):const SizedBox(),
        ],
      ),
    );
  }
}
