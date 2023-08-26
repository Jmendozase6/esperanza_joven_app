import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
import 'package:young_pregnant_app/features/about_us/presentation/widgets/widgets.dart';
import 'package:young_pregnant_app/utils/app_images.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BgProfileSection(
      child: Container(
        height: 0.25.sh,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.aboutUs,
              width: 0.2.sh,
              height: 0.2.sh,
            ),
            const Spacer(),
            const _Line(margin: 0.2),
            const Spacer(),
            const _Line(margin: 0.3),
          ],
        ),
      ),
    );
  }
}

class _Line extends StatelessWidget {
  const _Line({
    required this.margin,
  });

  final double margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.01.sh,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: margin.sw),
      decoration: BoxDecoration(
        color: Colors.black26,
        borderRadius: BorderRadius.circular(20.r),
      ),
    );
  }
}
