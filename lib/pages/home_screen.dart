import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/app_style/app_style.dart';
import 'package:medical_app/data/data.dart';
import 'package:medical_app/size_config.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Animate.restartOnHotReload = true;
    SizeConfig().init(context);
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Padding(padding: EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal! * 7),
              child:  Column(
                children: [
                  // User info area...
                  const UserInfo().animate().move(begin: const Offset(-100, 0),duration: 600.ms),
      
                  // Search Medical area...
                  const SearchMedical().animate().fadeIn(curve: Curves.bounceOut).scale(delay: 700.ms,),
      
                  // Services Area...
                  const MedicalServices().animate().move(begin: const Offset(0, -100),duration: 600.ms),
      
                  // Get Best Medical Services...
                   const GetBestMedicalService().animate().fadeIn(delay: 600.ms,duration: 400.ms).move(begin: const Offset(150, 0),duration: 600.ms),
      
      
                ],
              ),
            ),
            // UpcomingAppointment
            const UpcomingAppointment().animate().moveY(begin: 300,duration: 800.ms,delay: 400.ms)
          ],
        ),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.zero,
      title: const Padding(
        padding: EdgeInsets.only(bottom: 7),
        child: Text('👋 Hello!'),
      ),
      subtitle: Text(
        'Hazrat Bilal',
        style: Theme.of(context).textTheme.headlineSmall!.copyWith(
          fontWeight: FontWeight.w700
        ),
      ),
      trailing: Container(
        height: 48,
        width: 48,
        decoration: BoxDecoration(
          image: const DecorationImage(
            image: AssetImage(AppStyle.profile),
            fit: BoxFit.cover,
            repeat: ImageRepeat.repeat
          ),
          borderRadius: BorderRadius.circular(18)
        ),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 18,
              width: 18,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppStyle.primarySwatch,
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                  style: BorderStyle.solid,
                )
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SearchMedical extends StatelessWidget {
  const SearchMedical({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
        padding: EdgeInsets.symmetric(vertical: SizeConfig.blockSizeHorizontal! * 3),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: "Search here",
          prefixIcon: CupertinoButton(
              onPressed: (){},
              child: SvgPicture.asset(AppStyle.searchIcon)),
          suffixIcon: CupertinoButton(
              onPressed: (){},
              child: SvgPicture.asset(AppStyle.filterIcon,height: 30,)),
          fillColor: AppStyle.inputFillColor,
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(18)
          )
        ),
      ),
    );
  }
}

class MedicalServices extends StatelessWidget {
  const MedicalServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
            'Services',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.w700,
            letterSpacing: 1,
          ),
        ),
        const SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: serviceList.map((e) => CupertinoButton(
            padding: EdgeInsets.zero,
              child: Container(
                decoration: BoxDecoration(
                  color: e.color,
                  borderRadius: BorderRadius.circular(20)
                ),
                width: SizeConfig.blockSizeHorizontal! * 17,
                height: SizeConfig.blockSizeHorizontal! * 17,
                child: Center(
                  child: SvgPicture.asset(e.image,height: 45,),
                ),
              ),
              onPressed: (){}
          )
          ).toList()
        )
      ],
    );
  }
}

class GetBestMedicalService extends StatelessWidget {
  const GetBestMedicalService({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: SizeConfig.blockSizeVertical! * 3),
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Container(
            width: double.infinity,
            decoration:  BoxDecoration(
              color: const Color(0xffDCEDF9),
              borderRadius: BorderRadius.circular(18),
            ),
            child: Row(

              children: [
                SizedBox(
                  height: SizeConfig.blockSizeVertical! * 50,
                  child: Padding(
                    padding:  EdgeInsets.only(left: SizeConfig.blockSizeHorizontal! * 5),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Get The Best \n Medical Service',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1,
                          ),
                        ),
                        SizedBox(height: SizeConfig.blockSizeVertical! *1,),
                        Text(
                          'Get The Best \n Medical Service',
                          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                            fontSize: 11,
                            height: 1.5
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                 Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(topRight: Radius.circular(20),bottomRight: Radius.circular(20)),
                      child: Image.asset(
                          AppStyle.image1),
                    )
                    )

              ],
            ),
          )
        ],
      ),
    );
  }
}

class UpcomingAppointment extends StatelessWidget {
  const UpcomingAppointment({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal! * 7),
          child: Text(
            'Upcoming Appointment',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
            ),
          ),
        ),
        SizedBox(height: SizeConfig.blockSizeVertical! * 2 ,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(left: 28),
            child: Row(
              children: upcomingAppointmentList.map((e)=> CupertinoButton(
                padding: const EdgeInsets.only(right: 12),
                  child: Container(
                    height: SizeConfig.blockSizeVertical! * 40,
                    width: SizeConfig.blockSizeHorizontal! * 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: e.color
                    ),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(20),
                          width: 71,
                          height: 99,
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(26)
                          ),
                          child: Center(
                            child: Text(e.date,
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(e.time,
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                color: Colors.white,
                                letterSpacing: 1,
                              ),
                            ),
                            Text(e.title,
                              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                color: Colors.white,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(e.subtitle,
                              style: Theme.of(context).textTheme.titleMedium!.copyWith(
                                color: Colors.white60,
                                letterSpacing: 1,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  onPressed: (){})
              ).toList(),
            ),
          ),
        )
      ],
    );
  }
}





