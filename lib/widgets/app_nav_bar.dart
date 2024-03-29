import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:simple_code_project/constants/app_colors.dart';

import '../constants/app_assets.dart';
import '../generated/l10n.dart';
import '../ui/episodes/episodes_screen.dart';
import '../ui/locations/locations_screen.dart';
import '../ui/persons_list/persons_list_screen.dart';
import '../ui/settings_screen.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({
    Key? key,
    required this.current,
  }) : super(key: key);

  final int current;

  PageRouteBuilder _createRoute(Widget screen) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => screen,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return child;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: current,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.neutral3,
      selectedFontSize: 14.0,
      unselectedFontSize: 14.0,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            AppAssets.svg.persons,
            color: current == 0 ? null : AppColors.neutral3,
          ),
          label: S.of(context).persons,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.share_location_sharp),
          label: S.of(context).locations,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.tv),
          label: S.of(context).episodes,
        ),
        BottomNavigationBarItem(
          icon: const Icon(Icons.settings_outlined),
          label: S.of(context).settings,
        ),
      ],
      onTap: (index) {
        if (index == 0) {
          Navigator.of(context).pushAndRemoveUntil(
            _createRoute(const PersonsListScreen()),
            (route) => false,
          );
        } else if (index == 1) {
          Navigator.of(context).pushAndRemoveUntil(
            _createRoute(const LocationsScreen()),
            (route) => false,
          );
        } else if (index == 2) {
          Navigator.of(context).pushAndRemoveUntil(
            _createRoute(const EpisodesScreen()),
            (route) => false,
          );
        } else if (index == 3) {
          Navigator.of(context).pushAndRemoveUntil(
            _createRoute(const SettingsScreen()),
            (route) => false,
          );
        }
      },
    );
  }
}
