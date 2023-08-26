import 'package:flutter/material.dart';
import 'package:young_pregnant_app/features/about_us/presentation/widgets/widgets.dart';
import 'package:young_pregnant_app/shared/widgets/widgets.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: AboutUsView(),
    );
  }
}
