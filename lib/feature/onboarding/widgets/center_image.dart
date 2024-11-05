import 'package:flutter/material.dart';

class OnboardingCenterImage extends StatelessWidget {
  const OnboardingCenterImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.55,
              child: Image.asset('assets/images/onboardingImage.png', fit: BoxFit.fill,));
}}