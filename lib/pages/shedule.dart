import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../data/data.dart';
import '../size_config.dart';

class Schedule extends StatefulWidget {
  const Schedule({super.key});

  @override
  State<Schedule> createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {

  @override
  Widget build(BuildContext context) {
    Animate.restartOnHotReload = true;
    SizeConfig().init(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        
          children: [
             SizedBox(height: 40,),
            Padding(
              padding:  EdgeInsets.only(left: 20),
              child: Align(
                alignment: Alignment.topLeft,
                  child: Text('Schedule',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700,fontSize: 25),)
              ).animate().moveY(begin: -100,duration: 700.ms),
            ),
            const SizedBox(height: 20,),
            const NextWeek().animate().moveX(begin: -250,duration: 700.ms,delay: 200.ms,).fadeIn(duration: 600.ms),
            const DoctorsList().animate().moveY(begin: 250,duration: 700.ms,delay: 200.ms).fadeIn(duration: 600.ms),
          ],
        ),
      ),
    );
  }
}
class DoctorsList extends StatelessWidget {
  const DoctorsList({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return  Expanded(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: doctorList.map((e)=> CupertinoButton(
                padding: const EdgeInsets.only(right: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
      
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(e.time+"_ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _"),
                    ),
                    Container(
                      height: SizeConfig.blockSizeVertical! * 40,
                      width: SizeConfig.blockSizeHorizontal! * 90,
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
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(e.image)
                              ),
                                color: Colors.white12,
                                borderRadius: BorderRadius.circular(26)
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
                              Text(e.name,
                                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                                  color: Colors.white,
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(e.spesh,
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
                  ],
                ),
                onPressed: (){})
            ).toList(),
          ),
        ),
      ),
    )
    ;
  }
}

class NextWeek extends StatelessWidget {
  const NextWeek({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(width: 10,),
          Container(
            height: 100,
            width: 80,
            decoration: BoxDecoration(
              color: Color(0xff87CEEB),
              borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('17',style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text('Mon',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w500,fontSize: 15),),
                ],
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            height: 100,
            width: 80,
            decoration: BoxDecoration(
                color: Color(0xff87CEEB),
                borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('18',style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text('Tue',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w500,fontSize: 15),),
                ],
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            height: 100,
            width: 80,
            decoration: BoxDecoration(
                color: Color(0xff87CEEB),
                borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('19',style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text('Wed',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w500,fontSize: 15),),
                ],
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            height: 100,
            width: 80,
            decoration: BoxDecoration(
                color: Color(0xff87CEEB),
                borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('20',style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text('Thu',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w500,fontSize: 15),),
                ],
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            height: 100,
            width: 80,
            decoration: BoxDecoration(
                color: Color(0xff87CEEB),
                borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('21',style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text('Fri',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w500,fontSize: 15),),
                ],
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
            height: 100,
            width: 80,
            decoration: BoxDecoration(
                color: Color(0xff87CEEB),
                borderRadius: BorderRadius.circular(20)
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('22',style: Theme.of(context).textTheme.bodyLarge!.copyWith(fontWeight: FontWeight.bold,fontSize: 20),),
                  Text('Sat',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontWeight: FontWeight.w500,fontSize: 15),),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}


