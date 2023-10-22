import 'package:flutter/material.dart';


import '../view/themes/app_colors.dart';
import '../view/themes/app_text_style.dart';

class CarouselModel {
  final String image;

  final Widget widget;

  CarouselModel({required this.image, required this.widget});
}

final carouselModel = [
  CarouselModel(
      image: 'baby',
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('10 easy ', style: AppTextStyle.whiteF10W500TextStyle),
          const Text('Baby', style: AppTextStyle.whiteF24W800TextStyle),
          const Text('Skin Care Tips',
              style: AppTextStyle.whiteF10W500TextStyle),
          Container(
            margin: const EdgeInsets.only(top: 5, bottom: 5),
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(4), color: Colors.white),
            child: const Text('Read More',
                style: AppTextStyle.blackF8W600TextStyle),
          )
        ],
      )),
  CarouselModel(
      image: 'food',
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '5 FOOD ROUTINE\nTO CONTROL ',
            style: AppTextStyle.blackF12W500TextStyle,
          ),
          const Text('DIABETES', style: AppTextStyle.blackF24W800TextStyle),
          Container(
            margin: const EdgeInsets.only(left: 25, top: 5, bottom: 5),
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.lightBrownColor,
            ),
            child: const Text('Read More',
                style: AppTextStyle.whiteF8W600TextStyle),
          )
        ],
      )),
  CarouselModel(
      image: 'grapes',
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('7 Health Benefits Of',
              style: AppTextStyle.whiteF10W500TextStyle),
          const Text('Grapes', style: AppTextStyle.whiteF24W800TextStyle),
          Container(
            margin: const EdgeInsets.only(left: 25, top: 5, bottom: 5),
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.darkBrownColor,
            ),
            child: const Text('Read More',
                style: AppTextStyle.whiteF8W600TextStyle),
          )
        ],
      )),
  CarouselModel(
      image: 'yoga',
      widget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('The Value of', style: AppTextStyle.organeF10W500TextStyle),
              SizedBox(width: 2),
              Text('Yoga', style: AppTextStyle.organeF24W800TextStyle),
            ],
          ),
          const Text('In Our Daily Life',
              style: AppTextStyle.organeF10W500TextStyle),
          Container(
            margin: const EdgeInsets.only(left: 25, top: 5, bottom: 5),
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: AppColors.organeColor,
            ),
            child: const Text('Read More',
                style: AppTextStyle.whiteF8W600TextStyle),
          )
        ],
      )),
];
