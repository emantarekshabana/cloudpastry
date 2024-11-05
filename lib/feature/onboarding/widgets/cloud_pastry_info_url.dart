import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';
class CloudPastryInfoUrl extends StatelessWidget {
  const CloudPastryInfoUrl({super.key});
 
  @override 
  Widget build(BuildContext context) {
    return  Container(
      height: 60.h,
      color: ColorsManager.mainColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Text("More Info  ",style: TextStyles.font16WhiteSemiBold),
        Text("www.cloud.pastry.com",style: TextStyles.font16WhiteSemiBold)
      ],),
    );
  }
}