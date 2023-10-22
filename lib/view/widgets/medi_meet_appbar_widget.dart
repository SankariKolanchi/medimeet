import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_style.dart';

class MediMeetAppBarWidget extends StatelessWidget {
  const MediMeetAppBarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 120,
      leadingWidth: 0,
      automaticallyImplyLeading: false,
      title: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 70,
            width: 80,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  top: 5,
                  child: Image.asset(
                    'assets/images/top_arrow.png',
                    width: 25,
                    height: 25,
                    color: AppColors.blueColor,
                    alignment: Alignment.topRight,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  top: 10,
                  right: 5,
                  left: 0,
                  child: CircleAvatar(
                    backgroundColor: AppColors.darkBlueColor,
                    child: Container(
                      margin: const EdgeInsets.all(6),
                      decoration: const BoxDecoration(shape: BoxShape.circle),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50?s=200',
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(width: 15),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 6),
              Text('Good Morning',
                  style: AppTextStyle.semiBlueF12W500TextStyle),
              Text('Gokul v', style: AppTextStyle.semiBlueF22W700TextStyle),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3, left: 8),
            child: Image.asset('assets/images/flat_waving_hand.png',
                width: 30, height: 30),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: InkWell(
                onTap: () {},
                child: Image.asset('assets/images/menu.png',
                    width: 25, height: 25)),
          ),
        ],
      ),
    );
  }
}
