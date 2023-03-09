import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CircleIndicator extends StatefulWidget {
  final int currentIndex;
  final int itemCount;
  final Color activeColor;
  final Color inactiveColor;

  CircleIndicator({
    required this.currentIndex,
    required this.itemCount,
    this.activeColor = const Color(0xff101828),
    this.inactiveColor = const Color(0xffd9d9d9),
  });

  @override
  _CircleIndicatorState createState() => _CircleIndicatorState();
}

class _CircleIndicatorState extends State<CircleIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          widget.itemCount,
          (index) => Container(
            width: 8.0.w,
            height: 8.0.h,
            margin: EdgeInsets.symmetric(horizontal: 4.0),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.currentIndex == index
                  ? widget.activeColor
                  : widget.inactiveColor,
            ),
          ),
        ),
      ),
    );
  }
}
