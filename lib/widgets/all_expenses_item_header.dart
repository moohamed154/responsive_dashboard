import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader(
      {super.key,
      required this.image,
      this.imaageBackgroundColor,
      this.imageColor});

  final String image;
  final Color? imaageBackgroundColor, imageColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: ShapeDecoration(
            shape: const OvalBorder(),
            color: imaageBackgroundColor ?? const Color(0xfffafafa),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14),
            child: SvgPicture.asset(
              image,
              colorFilter: ColorFilter.mode(
                imageColor ?? const Color(0xff4EB7F2),
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: -1.57079633 * 2,
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: imageColor == null ? const Color(0xFF064061) : Colors.white,
          ),
        ),
      ],
    );
  }
}
