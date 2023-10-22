import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_style.dart';

import 'title_widget.dart';

class AppointmentWidget extends StatelessWidget {
  const AppointmentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TitleWidget(title: 'Upcoming Appointment'),
          const SizedBox(height: 14),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: SizedBox(
              height: 170,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, i) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4),
                      width: (MediaQuery.of(context).size.width) - 30,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.blueColor),
                      padding: const EdgeInsets.all(14),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/images/doctor_1.png',
                                    height: 60,
                                    width: 60,
                                  ),
                                  const SizedBox(width: 14),
                                  const Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text('Dr. Senthil Durai',
                                              style: AppTextStyle
                                                  .whiteF14W600TextStyle),
                                          SizedBox(width: 5),
                                          Text('B.D.S., M.D.S.',
                                              style: AppTextStyle
                                                  .whiteF8W400TextStyle),
                                        ],
                                      ),
                                      SizedBox(height: 5),
                                      Text('Dentist',
                                          style: AppTextStyle
                                              .whiteF10W500TextStyle),
                                    ],
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.more_vert,
                                size: 25,
                                color: Colors.white,
                              )
                            ],
                          ),
                          const SizedBox(height: 10),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: AppColors.darkBlueColor),
                            padding: const EdgeInsets.all(4),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Image.asset('assets/images/calendar.png',
                                        height: 24, width: 24),
                                    const SizedBox(width: 5),
                                    const Text(
                                      'Feb 20, 2023',
                                      style: AppTextStyle.whiteF12W600TextStyle,
                                    )
                                  ],
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    Image.asset('assets/images/clock.png',
                                        height: 24, width: 24),
                                    const SizedBox(width: 5),
                                    const Text(
                                      '6:00 PM - 6: 30 PM',
                                      style: AppTextStyle.whiteF12W600TextStyle,
                                    )
                                  ],
                                ),
                                const Spacer(),
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Padding(
                            padding: const EdgeInsets.only(left: 16.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Image.asset('assets/images/location.png',
                                    width: 24, height: 24),
                                const SizedBox(width: 5),
                                Text(
                                    'No:42, Aryagowda Road, West Mambalam, chennai-33',
                                    style: AppTextStyle.whiteF10W700TextStyle
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor: Colors.white))
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
