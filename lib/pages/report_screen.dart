import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_app/size_config.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    Animate.restartOnHotReload = true;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40,),
              Padding(
                padding:  EdgeInsets.only(left: 20),
                child: Align(
                    alignment: Alignment.topLeft,
                    child: Text('Schedule',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700,fontSize: 25),)
                ).animate().moveY(begin: -100,duration: 700.ms),
              ),
              const HeartRate().animate().moveX(begin: -200,duration: 700.ms).fadeIn(duration: 900.ms),
              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BloodAndWeight(icon: Icons.water_drop, moreIcon: Icons.more_horiz
                      , title:  'Blood Group', subtitle: 'A+', color: Colors.red.shade100
                  ).animate().moveX(begin: -200,duration: 900.ms,delay: 400.ms,curve: Curves.bounceOut),
          
                  BloodAndWeight(icon: Icons.line_weight, moreIcon: Icons.more_horiz
                      , title:  'Weight', subtitle: '78 Kg', color: Colors.yellow.shade100
                  ).animate().moveX(begin: 200,duration: 900.ms,delay: 400.ms,curve: Curves.bounceOut),
                ],
              ),
              const SizedBox(height: 20,),
            Text('Test Report',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700,fontSize: 20),
              ).animate().moveX(begin: -200,duration: 700.ms),
              ReportSection().animate().moveY(begin: 300,duration: 2.seconds,curve: Curves.bounceOut)
            ],
          ),
        ),
      ),
    );
  }
}
class HeartRate extends StatelessWidget {
  const HeartRate({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig.blockSizeVertical! * 50,
      width: SizeConfig.blockSizeHorizontal! * 90,
      decoration: BoxDecoration(
        color: Color(0xff89CFF0),
        borderRadius: BorderRadius.circular(30)
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15,left: 20),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Heart Rate',style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w400,fontSize: 20)),

            Row(
              children: [
                Row(
                  children: [
                    Text('96',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700,fontSize: 35)),
                    const SizedBox(width: 5),
                    Text('bpm',style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700,fontSize: 17)),
                  ],
                ),
                const SizedBox(width: 40,),
                Container(
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/heart.png',),
                      fit: BoxFit.cover
                    )
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class BloodAndWeight extends StatelessWidget {
  final IconData icon;
  final IconData moreIcon;
  final Color color;
  final String title;
  final String subtitle;

  const BloodAndWeight({super.key, required this.icon, required this.moreIcon, required this.title, required this.subtitle, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      width: 170,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(icon,color: Colors.red,),
                Icon(moreIcon)
              ],
            ),
            Text(title,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700,fontSize: 14)),
            Text(subtitle,style: Theme.of(context).textTheme.titleLarge!.copyWith(fontWeight: FontWeight.w700,fontSize: 25))
          ],
        ),
      ),
    );

  }
}

class ReportSection extends StatelessWidget {
  const ReportSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          shadowColor: Colors.blue,
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.blue.shade100,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Icon(Icons.sticky_note_2),
                    ),
                    SizedBox(width: 10,),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('General Health',style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w700,fontSize: 15),),
                            Text('10 Files',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 15,color: Colors.grey),),
                          ],
                        ),
                        SizedBox(width: 80,),
                        Icon(Icons.more_vert)
                      ],
                    )
                  ],
                ),

              ],
            ),
          )
        ),
        Card(
            shadowColor: Colors.blue,
            elevation: 5,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            color: Colors.green.shade100,
                            borderRadius: BorderRadius.circular(20)
                        ),
                        child: Icon(Icons.sticky_note_2),
                      ),
                      SizedBox(width: 10,),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Test Cases',style: Theme.of(context).textTheme.titleMedium!.copyWith(fontWeight: FontWeight.w700,fontSize: 15),),
                              Text('7 Files',style: Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: 15,color: Colors.grey),),
                            ],
                          ),
                          SizedBox(width: 110,),
                          Icon(Icons.more_vert)
                        ],
                      )
                    ],
                  ),

                ],
              ),
            )
        )

      ],
    );
  }
}


