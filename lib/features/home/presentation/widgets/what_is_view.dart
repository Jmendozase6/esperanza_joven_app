import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:young_pregnant_app/utils/app_images.dart';
import 'package:young_pregnant_app/utils/utils.dart';

class WhatIsView extends StatelessWidget {
  const WhatIsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 15.w),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ...[
              "- Conceptos",
              "- Causas",
              "- Consecuencias",
            ].map(
              (item) => Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  item,
                  style: TextStylesUtils.titleItalicStyle(),
                ),
              ),
            ),
            const Divider(),
            Text(
              'El embarazo adolescente es cuando una adolescente, generalmente entre las edades de 10 y 19 años, queda embarazada. El embarazo en la adolescencia puede ocurrir por diversas razones, como la falta de educación sexual, el acceso limitado a anticonceptivos, presiones sociales, pobreza, falta de apoyo familiar, entre otros factores.',
              style: TextStylesUtils.normalStyle(),
            ),
            Image.asset(
              AppImages.pregnancy01,
              height: 0.3.sh,
            ),
            const Divider(),
            Text(
              'El embarazo en la adolescencia puede tener repercusiones físicas, emocionales y sociales significativas tanto para la madre adolescente como para el bebé. Las adolescentes embarazadas enfrentan un mayor riesgo de complicaciones durante el embarazo y el parto, como la hipertensión arterial, la anemia y el parto prematuro. Además, es probable que las madres adolescentes abandonen sus estudios, tengan dificultades para encontrar empleo y enfrenten desafíos económicos.',
              style: TextStylesUtils.normalStyle(),
            ),
            Image.asset(
              AppImages.pregnancy02,
              height: 0.3.sh,
            ),
            const Divider(),
            Text(
              'También puede tener un impacto en el desarrollo emocional y social de la adolescente. Puede generar estrés, ansiedad, estigmatización y aislamiento social. Además, las madres adolescentes a menudo enfrentan dificultades para criar a sus hijos, ya que pueden carecer de habilidades parentales y de apoyo adecuado.',
              style: TextStylesUtils.normalStyle(),
            ),
            Image.asset(
              AppImages.pregnancy03,
              height: 0.3.sh,
            ),
            const Divider(),
            Text(
              'Es importante brindar información y educación sexual integral a los adolescentes, así como acceso a servicios de salud reproductiva y anticonceptivos. La prevención del embarazo adolescente y el apoyo a las madres adolescentes son aspectos cruciales para garantizar su bienestar y el de sus hijos.',
              style: TextStylesUtils.normalStyle(),
            ),
            Image.asset(
              AppImages.pregnancy04,
              height: 0.3.sh,
            ),
          ],
        ),
      ),
    );
  }
}
