import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:young_pregnant_app/features/about_us/presentation/widgets/widgets.dart';
import 'package:young_pregnant_app/utils/app_images.dart';
import 'package:young_pregnant_app/utils/text_styles_utils.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BgProfileSection(
      child: Container(
        height: 0.2.sh,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.appIcon,
              height: 0.15.sh,
            ),
            const Spacer(),
            Text(
              'Fe y Alegría N° 15',
              style: TextStylesUtils.littleStyle(),
            ),
            Text(
              'Piura, Castilla',
              style: TextStylesUtils.littleStyle(),
            ),
          ],
        ),
      ),
    );
  }
}
