import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CloudPastryLogo extends StatelessWidget {
  final double? width;
 const CloudPastryLogo({this.width,super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset('assets/svgs/cloudpastry_logo.svg',width: width??240.w),//240.w
      //  SizedBox(width: 10.w), // Text
      ],
    ); // Row

  }
}