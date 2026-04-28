import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xffF1F1F1)),
      ),
      child: Row(
        children: [
          Text('Monthly', style: AppStyles.styleMedium16(context)),
          const SizedBox(width: 18),
          Transform.rotate(
            angle: -1.5708,
            child: const Icon(
              Icons.arrow_back_ios_rounded,
              color: Color(0xFF064061),
            ),
          ),
        ],
      ),
    );
  }
}
