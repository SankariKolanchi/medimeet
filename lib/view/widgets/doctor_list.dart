import 'package:flutter/material.dart';


import '../../models/doctor_model.dart';
import '../themes/app_colors.dart';
import '../themes/app_text_style.dart';
import 'title_widget.dart';

class DoctorList extends StatelessWidget {
  const DoctorList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleWidget(title: 'Doctors Near You'),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding:
                  const EdgeInsets.symmetric(vertical: 14.0, horizontal: 16),
              shrinkWrap: true,
              itemCount: doctorModel.length,
              itemBuilder: (context, i) {
                final item = doctorModel[i];
                return Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            blurRadius: 2.5,
                            spreadRadius: 2.5)
                      ]),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                    'assets/images/${item.image}.png',
                                    fit: BoxFit.cover,
                                    height: 80,
                                    width: 80),
                              ),
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text(item.name,
                                          style: AppTextStyle
                                              .blackF14W600TextStyle),
                                      const SizedBox(width: 5),
                                      Text(item.education,
                                          style: AppTextStyle
                                              .blackF10W400TextStyle),
                                    ],
                                  ),
                                  Text(item.specialist,
                                      style:
                                          AppTextStyle.blackF10W600TextStyle),
                                ],
                              )
                            ],
                          ),
                          const Icon(Icons.more_vert,
                              color: Colors.grey, size: 25)
                        ],
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              item.location,
                              style: AppTextStyle.greyF10W500UnderLineTextStyle,
                            ),
                            const SizedBox(width: 5),
                            Image.asset(
                              'assets/images/location.png',
                              width: 17,
                              height: 17,
                              color: AppColors.greyColor,
                            ),
                          ]),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Row(children: [
                          const Icon(Icons.star,
                              size: 30, color: AppColors.yellowColor),
                          const SizedBox(width: 5),
                          Text(
                            item.rating,
                            style: AppTextStyle.blackF14W600TextStyle,
                          ),
                        ]),
                      ),
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }
}
