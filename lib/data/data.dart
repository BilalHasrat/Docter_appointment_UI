import 'dart:ui';

import 'package:intl/intl.dart';

class Services {
  final String image;
  final Color color;

  Services({required this.image, required this.color});
}

List<Services> serviceList = [
  Services(
      image: 'assets/icons/doctor-icon.svg', color: const Color(0xffDCEDF9)),
  Services(image: 'assets/icons/noun-pill.svg', color: const Color(0xffFAF0DB)),
  Services(
      image: 'assets/icons/noun-medical-test.svg',
      color: const Color(0xffD6F6FF)),
  Services(
      image: 'assets/icons/noun-corona.svg', color: const Color(0xffF2E3E9)),
];

class Appointments {
  final String date;
  final String time;
  final String title;
  final String subtitle;
  final Color color;

  Appointments({
    required this.date,
    required this.time,
    required this.title,
    required this.subtitle,
    required this.color,
  });
}

List<Appointments> upcomingAppointmentList = [
  Appointments(
      date: '12\nTue',
      time: DateFormat('hh:mm a').format(DateTime.now()),
      title: 'Dr. Umar Ali',
      subtitle: 'Depression',
      color: const Color(0xff1C6BA4)),
  Appointments(
      date: '12\nTue',
      time: DateFormat('hh:mm a').format(DateTime.now()),
      title: 'Dr. Umar Ali',
      subtitle: 'Depression',
      color: const Color(0xff1C6BA4))
];

class Doctors {
  final String name;
  final String spesh;
  final String time;
  final String image;
  final Color color;

  Doctors(
      {required this.name,
      required this.image,
      required this.spesh,
      required this.time,
      required this.color});
}
List<Doctors> doctorList = [
  Doctors(
      name: 'Dr.Ishfaq',
      image: 'assets/images/ishfaq.jpg',
      spesh: 'Cardialogist',
      time: '1:30 PM',
      color: Color(0xff0096FF)),
  Doctors(
      name: 'Dr.Shumaila',
      image: 'assets/images/rajameer.jpg',
      spesh: 'Medical',
      time: '2:30 PM',
      color: Color(0xffFF5733)),
  Doctors(
      name: 'Dr.Abdul Samad',
      image: 'assets/images/samad.jpg',
      spesh: 'child Specialist',
      time: '2:00 PM',
      color: Color(0xffFFC300)),
];

