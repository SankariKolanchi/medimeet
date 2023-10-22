import 'package:flutter/material.dart';

import '../../models/carousel_model.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: carouselModel.length,
          itemBuilder: (context, i) {
            final item = carouselModel[i];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/images/${item.image}.png'),
                  ),
                  Positioned(left: 12, top: 15, child: item.widget)
                ],
              ),
            );
          }),
    );
  }
}
