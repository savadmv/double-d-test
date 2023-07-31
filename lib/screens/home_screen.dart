import 'package:double_d_test/components/post_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_rounded,color: AppColors.n9,),
        ),
        elevation: 0,
        backgroundColor: AppColors.white,
        title: const Text(
          "자유톡",
          style: TextStyle(color: AppColors.n10, fontSize: 16),
        ),
        actions: [SvgPicture.asset('assets/icons/notification.svg')],
      ),
      body: const PostBody(),
    );
  }
}
