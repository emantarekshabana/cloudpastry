import 'package:flutter/material.dart';

import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';
class CloudPastryInfoUrl extends StatelessWidget {
  const CloudPastryInfoUrl({super.key});
 
  @override 
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical : 20.0),
      child: Container(
        color: ColorsManager.mainColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical : 2.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Text("More Info  ",style: TextStyles.font16WhiteSemiBold),
            Text("www.cloud.pastry.com",style: TextStyles.font16WhiteSemiBold)
          ],),
        ),
      ),
    );
  }
}