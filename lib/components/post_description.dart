import 'package:double_d_test/components/hash_tag.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class PostDescription extends StatelessWidget {
  const PostDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야?",
            style: TextStyle(color: AppColors.n10, fontSize: 14,fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10,),
          const Text(
            "지난 월요일에 했던 이벤트 중 가장 괜찮은 상품 뭐야? 지난 월요일에 2023년 S/S 트렌드 알아보기 이벤트 참석했던 팝들아~ 혹시 어떤 상품이 제일 괜찮았어? 후기 올라오는거 보면 로우라이즈? 그게 제일 반응 좋고 그 테이블이 제일 재밌었다던데 맞아??? 올해 로우라이즈가 트렌드라길래 나도 도전해보고 싶은데 말라깽이가 아닌 사람들도 잘 어울릴지 너무너무 궁금해ㅜㅜ로우라이즈 테이블에 있었던 팝들 있으면 어땠는지 후기 좀 공유해주라~~!",
            style: TextStyle(color: AppColors.n9, fontSize: 12),
          ),
          const SizedBox(height: 10,),
          Wrap(
            spacing: 10,
            children:const  [
              HashTag(tag: "#2023"),
              HashTag(tag: "#TODAYISMONDAY"),
              HashTag(tag: "#TOP"),
              HashTag(tag: "#POPS!"),
              HashTag(tag: "#WOW"),
              HashTag(tag: "#ROW"),
            ],
          ),
        ],
      ),
    );
  }
}
