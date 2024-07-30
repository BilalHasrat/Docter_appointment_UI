import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/app_style/app_style.dart';
import 'package:medical_app/pages/home_screen.dart';
import 'package:medical_app/pages/report_screen.dart';
import 'package:medical_app/pages/shedule.dart';

class BottomNavbar extends StatefulWidget {
  const BottomNavbar({super.key});

  @override
  State<BottomNavbar> createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {

  int _selectedIndex = 0;
  static const List<Widget> _widgetsOptions = [
    HomeScreen(),
    Schedule(),
    ReportScreen(),
    Text('data'),
  ];
  void _onTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetsOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items:<BottomNavigationBarItem> [
          BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                  AppStyle.homeIcon,
                colorFilter: const ColorFilter.mode(
                    AppStyle.primarySwatch,
                    BlendMode.srcIn
                ),
              ),
            icon: SvgPicture.asset(AppStyle.homeIcon),
            label: 'Home'
          ),BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppStyle.eventIcon,
                colorFilter: const ColorFilter.mode(
                    AppStyle.primarySwatch,
                    BlendMode.srcIn
                ),
              ),
              icon: SvgPicture.asset(AppStyle.eventIcon),
              label: 'Schedule'
          ),
          BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppStyle.reportIcon,
                colorFilter: const ColorFilter.mode(
                    AppStyle.primarySwatch,
                    BlendMode.srcIn
                ),
              ),
              icon: SvgPicture.asset(AppStyle.reportIcon),
              label: 'Report'
          ),
          BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                AppStyle.notificationsIcon,
                colorFilter: const ColorFilter.mode(
                    AppStyle.primarySwatch,
                    BlendMode.srcIn
                ),
              ),
              icon: SvgPicture.asset(AppStyle.notificationsIcon),
              label: 'Notifications'
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppStyle.primarySwatch,
        onTap: _onTap,
      ),
    );
  }
}
