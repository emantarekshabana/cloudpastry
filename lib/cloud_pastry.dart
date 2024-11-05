//client app
//connect CloudPastry with app router

import 'package:cloudpastry/core/routing/app_router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/routing/routes.dart';
import 'core/theming/colors.dart';

class CloudPastry extends StatelessWidget {
  final AppRouter appRouter;
  const CloudPastry({super.key,required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),//your designer depended on / fixed value
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            title: 'cloud pastry',
            theme: ThemeData(
              primaryColor: ColorsManager.mainColor,
              scaffoldBackgroundColor: Colors.white,
            ),
            debugShowCheckedModeBanner: false,
            initialRoute: Routes.onBoardingScreen,
            onGenerateRoute: appRouter.generateRoute,
            // قد يكون لديك home أو يمكنك تعيين child
          );
        },
        child: const Placeholder(), // يمكنك وضع الصفحة الرئيسية هنا أو تغييرها بصفحتك المطلوبة.
      );
  }
}