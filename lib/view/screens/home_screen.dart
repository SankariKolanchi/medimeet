import 'package:flutter/material.dart';

import '../../models/bottom_nav_model.dart';
import '../widgets/appointment_widget.dart';
import '../widgets/carousel_widget.dart';
import '../widgets/doctor_list.dart';
import '../widgets/medi_meet_appbar_widget.dart';
import '../widgets/specialist_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(120), child: MediMeetAppBarWidget()),
        body: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselWidget(),
              AppointmentWidget(),
              SpecialistWidget(),
              DoctorList(),
            ],
          ),
        ),
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          child: SizedBox(
            height: kBottomNavigationBarHeight + 15,
            child: BottomNavigationBar(items: [
              for (final item in bottomNavModel)
                BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/images/${item.image}.png',
                      height: 20,
                      width: 20,
                    ),
                    label: item.name)
            ]),
          ),
        ));
  }
}
