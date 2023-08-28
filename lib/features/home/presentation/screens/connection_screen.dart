import 'package:flutter/material.dart';
import 'package:young_pregnant_app/features/home/presentation/widgets/widgets.dart';
import 'package:young_pregnant_app/utils/text_styles_utils.dart';

class ConnectionScreen extends StatelessWidget {
  const ConnectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Conexión con profesionales',
          style: TextStylesUtils.titleStyle(),
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: const ConnectionView(),
    );
  }
}
