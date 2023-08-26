import 'package:flutter/material.dart';
import 'package:young_pregnant_app/features/home/presentation/widgets/widgets.dart';
import 'package:young_pregnant_app/shared/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      body: HomeView(),
    );
  }
}
