import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TrasctionHistoryHeader extends StatelessWidget {
  const TrasctionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Transaction History",
          style: AppStyles.styleSemiBold20,
        ),
        Text(
          "See all",
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xff4eb7f2),
          ),
        ),
      ],
    );
  }
}
