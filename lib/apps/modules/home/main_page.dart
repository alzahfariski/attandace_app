import 'package:attandance_app/apps/modules/home/home_page.dart';
import 'package:attandance_app/apps/modules/leaderboard/leaderboard_page.dart';
import 'package:attandance_app/apps/modules/profile/profile_page.dart';
import 'package:attandance_app/apps/modules/report/report_page.dart';
import 'package:attandance_app/utils/constants/color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ming_cute_icons/ming_cute_icons.dart';
import 'package:water_drop_nav_bar/water_drop_nav_bar.dart';

class MainHomePage extends StatefulWidget {
  const MainHomePage({super.key});

  @override
  State<MainHomePage> createState() => _MainHomePageState();
}

class _MainHomePageState extends State<MainHomePage> {
  final Color navigationBarColor = AColors.secondary;
  int selectedIndex = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: selectedIndex);
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle(
        systemNavigationBarColor: navigationBarColor,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            HomePage(),
            ReportPage(),
            LeaderboardPage(),
            ProfilePage(),
          ],
        ),
        bottomNavigationBar: WaterDropNavBar(
          backgroundColor: navigationBarColor,
          barItems: [
            BarItem(
              filledIcon: MingCuteIcons.mgc_home_4_fill,
              outlinedIcon: MingCuteIcons.mgc_home_4_line,
            ),
            BarItem(
              filledIcon: MingCuteIcons.mgc_document_2_fill,
              outlinedIcon: MingCuteIcons.mgc_document_2_line,
            ),
            BarItem(
              filledIcon: MingCuteIcons.mgc_chart_bar_fill,
              outlinedIcon: MingCuteIcons.mgc_chart_bar_line,
            ),
            BarItem(
              filledIcon: MingCuteIcons.mgc_user_4_fill,
              outlinedIcon: MingCuteIcons.mgc_user_4_line,
            ),
          ],
          selectedIndex: selectedIndex,
          onItemSelected: (index) {
            setState(() {
              selectedIndex = index;
            });
            pageController.animateToPage(selectedIndex,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutQuad);
          },
        ),
      ),
    );
  }
}
