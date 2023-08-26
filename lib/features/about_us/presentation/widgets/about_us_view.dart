import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:young_pregnant_app/config/constants/app_constants.dart';
import 'package:young_pregnant_app/features/about_us/presentation/widgets/widgets.dart';
import 'package:young_pregnant_app/utils/app_images.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // Profile section
          const ProfileSection(),
          SizedBox(height: 10.h),
          Text(
            'Acerca de',
            style: TextStyle(
              fontSize: 15.sp,
            ),
          ),
          // Data section
          const DataItem(title: 'Aplicación', value: AppConstants.appName),
          const DataItem(
            title: 'Desarrollador',
            value: 'Jhair Mendoza',
            avatar: AppImages.avatar6,
          ),
          const DataItem(title: 'Versión', value: '1.0.0'),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.2.sw),
            child: const Divider(),
          ),
          const DataItem(
            title: 'Integrante',
            value: 'Ángel Daniel Lalupu',
            avatar: AppImages.avatar1,
          ),
          const DataItem(
            title: 'Integrante',
            value: 'Pierre Alonso Moscol',
            avatar: AppImages.avatar2,
          ),
          const DataItem(
            title: 'Integrante',
            value: 'José Luis Temoche',
            avatar: AppImages.avatar5,
          ),
          const DataItem(
            title: 'Integrante',
            value: 'Karla Yamile Farfan',
            avatar: AppImages.avatar3,
          ),
          const DataItem(
            title: 'Integrante',
            value: 'Kasandra Navarro',
            avatar: AppImages.avatar4,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.2.sw),
            child: const Divider(),
          ),
          const DataItem(title: 'Imágenes', value: 'Unsplash'),
          const DataItem(title: 'Imágenes', value: 'Storyset'),
          const DataItem(title: 'Imágenes', value: 'FlatIcon'),
        ],
      ),
    );
  }
}
