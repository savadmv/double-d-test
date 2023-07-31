import 'package:double_d_test/utils/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileTile extends StatelessWidget {
  const ProfileTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Colors.orange,
        foregroundImage: AssetImage('assets/profile/profile-one.png'),
      ),
      title: Row(
        children: const [
          Text(
            "안녕 나 응애 ",
            style: TextStyle(color: AppColors.n10, fontSize: 14),
          ),
          SizedBox(width: 3,),
          Icon(
            Icons.check_circle_sharp,
            color: AppColors.pops,
          ),
          SizedBox(width: 3,),
          Text("1일전 ", style: TextStyle(color: AppColors.n5, fontSize: 10)),
        ],
      ),
      subtitle: const Text("165cm.53kg",
          style: TextStyle(color: AppColors.n5, fontSize: 12)),
      trailing: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              shape: const StadiumBorder(), backgroundColor: AppColors.pops),
          child: const Text("팔로우",
              style: TextStyle(color: AppColors.white, fontSize: 12))),
    );
  }
}
