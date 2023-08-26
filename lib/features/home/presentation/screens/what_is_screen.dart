import 'package:flutter/material.dart';
import 'package:young_pregnant_app/features/home/presentation/widgets/widgets.dart';

class WhatIsScreen extends StatelessWidget {
  const WhatIsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SafeArea(
        child: WhatIsView(),
      ),
    );
  }
}
