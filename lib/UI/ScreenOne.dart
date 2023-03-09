import 'package:flutter/material.dart';
import 'package:ui_test/UI/ScreenTow.dart';
import 'package:get/get.dart';
import 'package:ui_test/UI/widget/TowColorCircle.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenOne extends StatefulWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.arrow_back_ios_new)),
                  Text(
                    '1/4',
                    style: TextStyle(fontSize: 16.sp, fontFamily: 'inter'),
                  ),
                  InkWell(
                      child: Text(
                    'Passer',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff667085),
                        fontSize: 16.sp),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
                width: 400.h,
                height: 400.w,
                child: Image.asset('assets/image/img_3.png')),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Demande de livraison',
                  style: TextStyle(
                      fontSize: 24.sp,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Inter'),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      right: 20.w, left: 19.w, top: 17.h, bottom: 20.h),
                  child: Text(
                    'Saisissez vos livraisons en cours. Un réseau de livreurs sérieux et qualifiés à votre écoute pour toutes vos livraisons.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 15.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 43,),
            Flexible(
              child: InkWell(
                onTap: () {
                  Get.to(
                    const ScreenTow(),
                    transition: Transition.upToDown,
                    duration: const Duration(milliseconds: 900),
                  );
                },
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomPaint(
                      size: const Size(72, 72),
                      painter: TwoColorCirclePainter(
                          color1: const Color(0xffec8200),
                          color2: const Color(0xff101828)),
                    ),
                    Container(
                      width: 56.h,
                      height: 56.0.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xff101828),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
