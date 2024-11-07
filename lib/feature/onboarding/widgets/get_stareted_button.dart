import 'package:cloudpastry/core/helper/extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/routing/routes.dart';
import '../../../core/theming/colors.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_text_button.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
            Image.asset('assets/images/onboardingShapes.png', fit: BoxFit.fill,width: 75,height: 240,),
         Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal : 40.0),
              child: Column(
                children: [
                        Text('نسعى جاهدين لنكون وجهتك المفضلة لكل ما يتعلق بالحلويات، لنجعل كل تجربة تسوق لا تُنسى. انضم إلينا اليوم واستمتع بتجربة فريدة مع Cloud Pastry!',
                               style: TextStyles.font13BlueSemiBold,
                               textAlign: TextAlign.center,
                             ),
                                SizedBox(height: 30.h,),
                                   Padding(
                                     padding: const EdgeInsets.symmetric(vertical : 15.0,horizontal: 50.0 ),
                                     child: AppTextButton(
                                      backgroundColor: ColorsManager.mainColor,
                                        buttonText: "ابدأ ",
                                        textStyle: TextStyles.font20WhiteSemiBold,
                                        onPressed: () {
                                          context.pushNamed(Routes.loginScreen);
                                        },
                                      ),
                  ),
                ],
              ),
            ),
         ),
      ],
    );
  }
}