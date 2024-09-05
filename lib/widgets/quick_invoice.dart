import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/latest_transction_list_view.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          Padding(
            padding: EdgeInsets.only(top: 24, bottom: 12),
            child: Text(
              'Latest Transaction',
              style: AppStyles.styleMedium16,
            ),
          ),
          LatestTransctionListView(),
        ],
      ),
    );
  }
}
