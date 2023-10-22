import 'package:flutter/material.dart';

import '../themes/app_text_style.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: AppTextStyle.blackF16W700TextStyle),
          const Text('See all', style: AppTextStyle.darkBlueF15W700TextStyle)
        ],
      ),
    );
  }
}
