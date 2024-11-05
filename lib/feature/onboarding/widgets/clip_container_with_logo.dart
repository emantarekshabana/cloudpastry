import 'package:flutter/material.dart';

import '../../../core/widgets/cloudpastry_logo.dart';

class ClipContainerWithLogo extends StatelessWidget {
  const ClipContainerWithLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
          child: ClipPath(
            clipper: BannerShapeClipper(),
            child: Container(
          //    width: double.infinity, // Adjust width as needed
              height: 180, // Adjust height as needed
              color: Colors.orange, 
              child: Stack(children: const[
                Positioned(
                  top: 40,
                  right: 20,
                  child: CloudPastryLogo(width: 90,)),
              ],),
              )
              // Orange background color
            ),
        );
  }
}

class BannerShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height-90); // Start from bottom left
    path.quadraticBezierTo(
      size.width * 0.58, // Control point X
      size.height - 120, // Further adjusted control point Y for more height on the right
      size.width, // End point X
      size.height, // End point Y
    );
    path.lineTo(size.width, 0); // Line to top right
    path.close(); // Close the path
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}