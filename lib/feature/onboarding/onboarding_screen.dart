import 'package:cloudpastry/cloud_pastry.dart';
import 'package:cloudpastry/core/helper/extension.dart';
import 'package:cloudpastry/feature/onboarding/widgets/cloud_pastry_info_url.dart';
import 'package:cloudpastry/feature/onboarding/widgets/curves_container_with_image_and_Text.dart';
import 'package:cloudpastry/feature/onboarding/widgets/get_stareted_button.dart';
import 'package:flutter/material.dart';

import '../../core/routing/routes.dart';
import '../../core/theming/styles.dart';
import '../../core/widgets/app_text_button.dart';



class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: const [  
                  CurvesContainerWithImageAndText(),
                  GetStartedButton(),     
                  CloudPastryInfoUrl(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}