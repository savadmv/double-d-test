import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_colors.dart';

class PostMenu extends StatelessWidget {
  const PostMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8,horizontal: 16),
      child: Row(
        children: const [
          Favorite(size: 32,),
          Comment(size: 32),
          Save(size: 32,),
          ThreeDote(size: 5,),
        ],
      ),
    );
  }
}

class Favorite extends StatelessWidget {
  const Favorite({super.key, required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/icons/fav.svg',height: size,width: size,),
          const SizedBox(
            width: 5,
          ),
          const Text(
            "5",
            style: TextStyle(color: AppColors.n5, fontSize: 12),
          )
        ],
      ),
    );
  }
}

class Comment extends StatelessWidget {
  const Comment({super.key, required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/icons/comment.svg',height: size,width: size,),
          const SizedBox(
            width: 5,
          ),
          const Text(
            "2",
            style: TextStyle(color: AppColors.n5, fontSize: 12),
          )
        ],
      ),
    );
  }
}
class Save extends StatelessWidget {
  const Save({super.key, required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/icons/save.svg',height: size,width: size,),
        ],
      ),
    );
  }
}
class ThreeDote extends StatelessWidget {
  const ThreeDote({super.key, required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset('assets/icons/three_dote.svg',height: size,width: size,),
        ],
      ),
    );
  }
}
