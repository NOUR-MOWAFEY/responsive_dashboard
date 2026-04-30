import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class AllExpensesItemHeader extends StatelessWidget {
  const AllExpensesItemHeader({
    super.key,
    required this.allExpensesItemModel,
    required this.isActive,
  });
  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: BoxDecoration(
                  color: isActive
                      ? Colors.white.withValues(alpha: 0.1)
                      : Color(0xffFAFAFA),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    allExpensesItemModel.image,
                    colorFilter: ColorFilter.mode(
                      isActive ? Colors.white : Color(0xff4EB7F2),
                      .srcIn,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),

        const Spacer(),

        Icon(
          Icons.arrow_forward_ios_rounded,
          applyTextScaling: true,
          size: getResponsiveFontSize(context, fontSize: 24),
          color: isActive ? Colors.white : Color(0xff064061),
        ),
      ],
    );
  }
}
