import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SvgWithExactShadow extends StatelessWidget {
  final String svgPath;
  final double width;
  final double height;
  final Color shadowColor;
  final Offset shadowOffset;
  final double blurRadius;

  const SvgWithExactShadow({
    Key? key,
    required this.svgPath,
    required this.width,
    required this.height,
    required this.shadowColor,
    required this.shadowOffset,
    required this.blurRadius,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        // Shadow Layer
        Transform.translate(
          offset: shadowOffset,
          child: SvgPicture.asset(
            svgPath,
            width: width,
            height: height,
            color: shadowColor.withOpacity(0.5), // Shadow color
          ),
        ),
        // Original SVG Layer
        SvgPicture.asset(
          svgPath,
          width: width,
          height: height,
        ),
      ],
    );
  }
}
