import 'package:flutter/material.dart';
import 'package:young_pregnant_app/features/home/presentation/widgets/widgets.dart';
import 'package:young_pregnant_app/utils/text_styles_utils.dart';

class WhatIsScreen extends StatelessWidget {
  const WhatIsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '¿Qué es el embarazo adolescente?',
          style: TextStylesUtils.titleStyle(),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: const SafeArea(
        child: WhatIsView(),
      ),
    );
  }
}
