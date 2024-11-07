import 'package:cloudpastry/feature/onboarding/widgets/clip_container_with_text.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'center_image.dart';
import 'clip_container_with_logo.dart';
import 'package:flutter/material.dart';

class CurvesContainerWithImageAndText extends StatelessWidget {
  const CurvesContainerWithImageAndText
({super.key});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      children:  [
         Container(
            height: MediaQuery.of(context).size.height * 0.60,
            color: Colors.white,
          ),
        const Positioned(
           top: 65, // Adds a 10-pixel offset from the top
          left: 0,
          right: 0,
          child: OnboardingCenterImage()),
       const ClipContainerWithLogo(),
       const Positioned(
          bottom: 0,
          child: ClipContainerWithText(),
        ),         
      ],
    );
  }
}
