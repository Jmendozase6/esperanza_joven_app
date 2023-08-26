import 'package:flutter/material.dart';
import 'package:young_pregnant_app/features/home/presentation/widgets/widgets.dart';
import 'package:young_pregnant_app/utils/text_styles_utils.dart';

class TestimonialsScreen extends StatelessWidget {
  const TestimonialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Agrega tu testimonio',
          style: TextStylesUtils.normalStyle(),
        ),
      ),
      body: const TestimonialsView(),
    );
  }
}
