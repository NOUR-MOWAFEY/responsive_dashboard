import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/dots_indicator.dart';
import 'package:responsive_dashboard/widgets/my_card_page_view.dart';

class MyCardSection extends StatefulWidget {
  const MyCardSection({super.key});

  @override
  State<MyCardSection> createState() => _MyCardSectionState();
}

class _MyCardSectionState extends State<MyCardSection> {
  late PageController pageController;
  int currentPageIndex = 0;

  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(
      () => setState(() => currentPageIndex = pageController.page!.round()),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: CustomBackgroundContainer(
        padding: 24,
        child: Column(
          crossAxisAlignment: .start,
          children: [
            Text('My card', style: AppStyles.styleSemiBold20(context)),

            const SizedBox(height: 20),

            MyCardPageView(pageController: pageController),

            const SizedBox(height: 20),

            DotsIndicator(currentPageIndex: currentPageIndex),
          ],
        ),
      ),
    );
  }
}
