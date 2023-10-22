import 'package:flutter/material.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_style.dart';

import '../../models/specialist_model.dart';
import 'title_widget.dart';

class SpecialistWidget extends StatelessWidget {
  const SpecialistWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TitleWidget(title: 'Choose your Specialist'),
        const SizedBox(height: 14),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            height: 60,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: specialistModel.length,
                itemBuilder: (context, i) {
                  final item = specialistModel[i];
                  return InkWell(
                    onTap: () {},
                    child: Container(
                      width: 75,
                      margin: const EdgeInsets.symmetric(horizontal: 6),
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: AppColors.darkBlueColor,
                          borderRadius: BorderRadius.circular(8)),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/${item.image}.png',
                            width: 22,
                            height: 22,
                            alignment: Alignment.center,
                          ),
                          const SizedBox(height: 4),
                          Text(item.name,
                              style: AppTextStyle.whiteF8W500TextStyle)
                        ],
                      ),
                    ),
                  );
                }),
          ),
        ),
      ],
    );
  }
}
