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
    return  Container(
      color: ColorsManager.darkMainColor,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 120.h,vertical: 20.h),
        child: AppTextButton(
                        backgroundColor: Colors.white,
                          buttonText: "ابدأ ",
                          textStyle: TextStyles.font24BlackBold,
                          onPressed: () {
                            context.pushNamed(Routes.loginScreen);
                          },
                        ),
      ),
    );
  }
}