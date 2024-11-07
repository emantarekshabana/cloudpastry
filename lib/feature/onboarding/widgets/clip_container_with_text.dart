import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ClipContainerWithText extends StatelessWidget {
  const ClipContainerWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
             clipper: BannerShapeClipper(),
            child: Container(
              height: 80.h,
               width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: const Text(""),
              
            //   Stack(
            //     children:[ 
            //       Positioned(
            //           bottom: 40,
            //          child: SizedBox(
            //           width: MediaQuery.of(context).size.width,
            //            child: Text('منظومة متكاملة نغطي جوانب رئيسية للتجارة من بينها دراسة السوق، والتوقعات المستقبلية، وميزانيات العملاء، والتجارة الإلكترونية، وخدمات التوصيل',
            //                   style: TextStyles.font12DarkBlueRegular,
            //                   textAlign: TextAlign.center,
            //                 ),
            //          ),
            //       ),
            // ] 
            //  ), 
            ),
          );
  }
}

class BannerShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
     
    // Start from bottom left
    path.quadraticBezierTo(
       // Further adjusted control point Y for more height on the right
      size.width * 0.5, // Control point X
      size.height - 10.h,
      size.width, // Control point X
      size.height- 13.h,// End point Y
    );
    //  path.lineTo(size.width, 0); 
    path.lineTo(size.width, size.height); 
    path.lineTo(0, size.height);
  // Line to top right
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}