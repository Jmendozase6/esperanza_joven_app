import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:young_pregnant_app/config/constants/app_constants.dart';
import 'package:young_pregnant_app/config/theme/app_colors.dart';
import 'package:young_pregnant_app/utils/utils.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      height: 0.16.sh,
      margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Row(
            children: [
              Container(
                width: 5.w,
                height: 80.h,
                margin: EdgeInsets.only(right: 20.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: AppColors.backgroundColor,
                ),
              ),
              Text(
                AppConstants.homeTitle,
                style: TextStylesUtils.titleStyle(color: colors.onBackground),
              ),
              const Spacer(),
              Container(
                width: 50.w,
                height: 80.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: colors.onBackground,
                ),
                child: IconButton(
                  onPressed: () =>
                      context.pushNamed(AppRoutes.testimonials.routeName),
                  icon: Icon(
                    TablerIcons.send,
                    color: colors.background,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 10.h),
          Container(
            height: 5.h,
            width: 0.5.sw,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              color: AppColors.backgroundColor,
            ),
          ),
        ],
      ),
    );
  }
}
