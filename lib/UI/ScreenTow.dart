import 'dart:ui';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:ui_test/UI/widget/indecator.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScreenTow extends StatefulWidget {
  const ScreenTow({Key? key}) : super(key: key);

  @override
  State<ScreenTow> createState() => _ScreenTowState();
}

class _ScreenTowState extends State<ScreenTow> {
  int setBottomBarIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 20, left: 20),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Current Location',
                                style: TextStyle(
                                    fontFamily: 'Sofia Pro',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                    color: Colors.grey),
                              )),
                        ),
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: SizedBox(
                                  height: 16.h,
                                  width: 16.w,
                                  child: Image.asset('assets/icons/img_3.png')),
                            ),
                            Text(
                              'Paris, France',
                              style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Sofia Pro'),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: SizedBox(
                                  height: 10.h,
                                  width: 10.w,
                                  child: Image.asset('assets/icons/img_9.png')),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Align(
                        alignment: Alignment.centerRight,
                        child: SizedBox(
                            height: 40.h,
                            width: 40.w,
                            child: Image.asset('assets/image/img_2.png'))),
                  ],
                ),
                SizedBox(
                  height: 25.h,
                ),
                Stack(
                  children: [
                    Image.asset('assets/image/img_1.png'),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 13, top: 23, bottom: 35, right: 104),
                      child: Text(
                        'Manage your deliveries independently and in complete flexibility',
                        style: TextStyle(
                            fontFamily: 'Inter',
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 16.sp),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Stack(
                  children: [
                    Image.asset('assets/icons/img_10.png'),
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text(
                        'The profiles of the deliverers are combedthrough end before being accepted on Yuween. We make your transactions safe our priority.',
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleIndicator(
                      currentIndex: 1,
                      itemCount: 3,
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                            height: 59.h,
                            width: 65.w,
                            child: Image.asset('assets/icons/img_1.png')),
                        SizedBox(
                          height: 18.7.h,
                        ),
                        Text(
                          'Schedule delivery',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14.sp),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                            height: 65.h,
                            width: 65.w,
                            child: Image.asset('assets/icons/img.png')),
                        SizedBox(
                          height: 18.7.h,
                        ),
                        Text(
                          'Take advantage',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 14.sp),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Stack(
                  children: [
                    Image.asset('assets/image/img_5.png'),
                    Row(
                      children: [
                        SizedBox(
                            height: 32.h,
                            width: 38.w,
                            child: Image.asset('assets/icons/img_2.png')),
                        Padding(
                            padding:
                                EdgeInsets.only(top: 10, bottom: 16, left: 24),
                            child: Text(
                              'Consult the list of your delivery \n requests',
                              style: TextStyle(
                                  fontSize: 14.sp, fontWeight: FontWeight.w500),
                            )),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: SizedBox(
        width: 150.w,
        height: 80.h,
        child: Stack(
          children: [
            Image.asset('assets/image/img_6.png'),
            Center(
              heightFactor: 1.5.h,
              child: Stack(
                children: [
                  Container(
                    height: 100.h,
                    width: 50.w,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                        border: Border.all(width: 1.w, color: Colors.orange)),
                    child: Container(
                      height: 100.h,
                      width: 70.w,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.red,
                          border: Border.all(width: 4.w, color: Colors.white)),
                      child: FloatingActionButton(
                          backgroundColor: Colors.orange,
                          elevation: 0.1,
                          onPressed: () {},
                          child: SizedBox(
                              height: 20.h,
                              width: 20.w,
                              child: Image.asset('assets/icons/img_8.png'))),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 30, left: 10, right: 10),
              width: double.infinity,
              height: 80.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Stack(
                    children: [
                      Container(
                        child: setBottomBarIndex == 0 ? background() : null,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            setBottomBarIndex = 0;
                          });
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 25.h,
                              width: 25.w,
                              child: Image.asset('assets/icons/img_4.png',
                                  color: setBottomBarIndex == 0
                                      ? const Color(0xFF1d2939)
                                      : const Color(0xFF1d2939)),
                            ),
                            Text('Requests',
                                style: TextStyle(
                                    color: setBottomBarIndex == 0
                                        ? const Color(0xFF1d2939)
                                        : Colors.grey,
                                    fontFamily: 'FFShamelFamily-SansOneBook',
                                    fontSize: 12.sp)),
                            Container(
                              child: setBottomBarIndex == 0 ? line() : null,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        child: setBottomBarIndex == 1 ? background() : null,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            setBottomBarIndex = 1;
                          });
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 25.h,
                              width: 25.w,
                              child: Image.asset('assets/icons/img_5.png',
                                  color: setBottomBarIndex == 1
                                      ? const Color(0xFF1d2939)
                                      : const Color(0xFF1d2939)),
                            ),
                            Text('Deliveries',
                                style: TextStyle(
                                    color: setBottomBarIndex == 1
                                        ? const Color(0xFF1d2939)
                                        : Colors.grey,
                                    fontFamily: 'FFShamelFamily-SansOneBook',
                                    fontSize: 12.sp)),
                            Container(
                              child: setBottomBarIndex == 1 ? line() : null,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: 10 * 0.20.w,
                  ),
                  Stack(
                    children: [
                      Container(
                        child: setBottomBarIndex == 2 ? background() : null,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            setBottomBarIndex = 2;
                          });
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 25.h,
                              width: 25.w,
                              child: Image.asset('assets/icons/img_6.png',
                                  color: setBottomBarIndex == 2
                                      ? const Color(0xFF1d2939)
                                      : const Color(0xFF1d2939)),
                            ),
                            Text('Activity',
                                style: TextStyle(
                                    color: setBottomBarIndex == 2
                                        ? const Color(0xFF1d2939)
                                        : Colors.grey,
                                    fontFamily: 'FFShamelFamily-SansOneBook',
                                    fontSize: 12.sp)),
                            Container(
                              child: setBottomBarIndex == 2 ? line() : null,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        child: setBottomBarIndex == 3 ? background() : null,
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            setBottomBarIndex = 3;
                          });
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              height: 25.h,
                              width: 25.w,
                              child: Image.asset('assets/icons/img_7.png',
                                  color: setBottomBarIndex == 3
                                      ? const Color(0xFF1d2939)
                                      : const Color(0xFF1d2939)),
                            ),
                            Text('Account',
                                style: TextStyle(
                                    color: setBottomBarIndex == 3
                                        ? const Color(0xFF1d2939)
                                        : Colors.grey,
                                    fontFamily: 'FFShamelFamily-SansOneBook',
                                    fontSize: 12.sp)),
                            Container(
                              child: setBottomBarIndex == 3 ? line() : null,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color.fromRGBO(71, 84, 103, 1),
          Color.fromRGBO(242, 102, 40, 1),
          Color.fromRGBO(71, 84, 103, 1),
        ],
      ).createShader(Rect.fromLTWH(0, 0, size.width, size.height))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    var path = Path();
    path.moveTo(241.361, 15.1105);
    path.cubicTo(229.456, 12.173, 206.974, 7.10583, 182.087, 7);
    path.cubicTo(156.572, 7.10778, 133.521, 12.1749, 121.316, 15.1124);
    path.cubicTo(120.001, 15.4001, 118.59, 15.7168, 117.09, 16.0534);
    path.cubicTo(105.558, 18.6423, 88.7989, 22.4047, 70.4126, 23.1126);
    path.cubicTo(57.4272, 23.6127, 13.1036, 23.2793, -7.5, 23.1126);
    path.lineTo(-7.5, 80.1127);
    path.lineTo(182.087, 80.1107);
    path.lineTo(367, 80.1107);
    path.lineTo(367, 23.1107);
    path.cubicTo(346.904, 23.2774, 303.674, 23.6107, 291.009, 23.1107);
    path.cubicTo(273.076, 22.4027, 256.73, 18.6404, 245.482, 16.0515);
    path.cubicTo(244.019, 15.7149, 242.643, 15.3981, 241.361, 15.1105);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

Widget line() {
  return Container(
    width: 50.w,
    height: 10.h,
    decoration: BoxDecoration(
      border: Border(bottom: BorderSide(width: 3.w, color: Colors.orange)),
    ),
  );
}

Widget background() {
  return Container(
    child: Center(
      child: Padding(
        padding: EdgeInsets.only(left: 5, bottom: 10),
        child: ClipOval(
          child: Container(
            width: 45.w,
            height: 45.h,
            decoration: BoxDecoration(
              color: Colors.orange.shade700.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
