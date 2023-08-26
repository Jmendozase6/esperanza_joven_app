import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:young_pregnant_app/config/theme/app_colors.dart';
import 'package:young_pregnant_app/shared/providers/providers.dart';
import 'package:young_pregnant_app/utils/utils.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    final bottomProvider = context.watch<BottomNavBarProvider>();

    return Scaffold(
      body: body,
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: bottomProvider.currentIndex,
        onItemSelected: (value) {
          if (value == bottomProvider.currentIndex) return;
          bottomProvider.currentIndex = value;

          if (bottomProvider.currentIndex == 0) {
            context.goNamed(AppRoutes.home.routeName);
          }

          if (bottomProvider.currentIndex == 1) {
            context.goNamed(AppRoutes.aboutUs.routeName);
          }

          if (bottomProvider.currentIndex == 2) {
            context.goNamed(AppRoutes.contact.routeName);
          }
        },
        items: [
          FlashyTabBarItem(
            icon: const Icon(TablerIcons.home),
            title: const Text('Inicio'),
            activeColor: AppColors.backgroundColor,
          ),
          FlashyTabBarItem(
            icon: const Icon(TablerIcons.users_group),
            title: const Text('Nosotros'),
            activeColor: AppColors.backgroundColor,
          ),
          FlashyTabBarItem(
            icon: const Icon(TablerIcons.address_book),
            title: const Text('Contacto'),
            activeColor: AppColors.backgroundColor,
          ),
        ],
      ),
    );
  }
}
