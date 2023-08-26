import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:young_pregnant_app/config/constants/app_constants.dart';
import 'package:young_pregnant_app/utils/app_images.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(AppConstants.appName),
      centerTitle: true,
      actions: [
        Padding(
          padding: REdgeInsets.all(5),
          child: Image.asset(
            AppImages.appIcon,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
