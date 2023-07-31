import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_colors.dart';

class CommentTextField extends StatelessWidget {
  const CommentTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/icons/gallery.svg',
            height: 20,
            width: 20,
          ),
          SizedBox(width: 10,),
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  focusedErrorBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  label: Text(
                    "댓글을 남겨주세요.",
                    style: TextStyle(color: AppColors.n4, fontSize: 12),
                  )),
            ),
          ),
          TextButton(onPressed: (){}, child:  const Text(
            "등록",
            style: TextStyle(color: AppColors.n5, fontSize: 12),
          ))
        ],
      ),
    );
  }
}
