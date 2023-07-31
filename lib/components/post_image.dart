import 'package:double_d_test/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/rendering.dart';

import 'post_menu.dart';

class PostImage extends StatefulWidget {
  const PostImage({super.key});

  @override
  State<PostImage> createState() => _PostImageState();
}

class _PostImageState extends State<PostImage> {
  PageController controller = PageController(initialPage: 0);
  String imageUrl =
      'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg';
  List<Widget> imageWidgets = [
    Image.network(
        'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',fit: BoxFit.fill,),
    Image.network(
      'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',fit: BoxFit.fill,),
    Image.network(
      'https://wjddnjs754.cafe24.com/web/product/small/202303/5b9279582db2a92beb8db29fa1512ee9.jpg',fit: BoxFit.fill,),
  ];
  int _curr = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double width = size.width;
    double height = width * (6 / 5);
    return Column(
      children: [
        SizedBox(
          height: height,
          width: width,
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              PageView(
                controller: controller,
                children: imageWidgets,
                onPageChanged: (page) {
                  setState(() {
                    _curr = page;
                  });
                },
              ),
              Align(
                alignment: AlignmentDirectional.bottomCenter,
                child: SizedBox(
                  height: 40,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: imageWidgets.length,
                    itemBuilder: (BuildContext context, int index) {
                      double size=index==_curr?8:5;
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        height: size,
                          width: size,
                          decoration: const BoxDecoration(
                            color: AppColors.white, // border color
                            shape: BoxShape.circle,
                          )
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        const PostMenu(),
      ],
    );
  }
}
