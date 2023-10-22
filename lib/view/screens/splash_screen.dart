

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/app_colors.dart';
import '../themes/app_text_style.dart';
import '../widgets/app_button_widget.dart';
import 'home_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, AppColors.lightBlueColor])),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(),
            Center(
                child: Image.asset(
              'assets/images/medimeet.png',
              height: 120,
              fit: BoxFit.cover,
            )),
            const Spacer(
              flex: 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: AppButtonWidget(
                height: 46,
                width: double.infinity,
                borderRadius: 10,
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => const HomeScreen()));
                },
                color: AppColors.darkBlueColor,
                title: 'Get Started',
                buttonStyle: AppTextStyle.whiteF18W600TextStyle,
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
