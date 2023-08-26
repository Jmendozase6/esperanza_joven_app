import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:young_pregnant_app/utils/app_images.dart';
import 'package:young_pregnant_app/utils/utils.dart';

class MethodsView extends StatelessWidget {
  const MethodsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Chip(
                label: Text(
                  'Métodos anticonceptivos',
                  style: TextStylesUtils.titleStyle(),
                ),
              ),
            ),
            SizedBox(height: 10.h),
            ...[
              "• Conceptos",
              "• Causas",
              "• Consecuencias",
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
            const Divider(),
            const DefaultContent(
              title: 'Anticonceptivos hormonales',
              content: [
                'Píldora anticonceptiva: Son pastillas que contienen hormonas sintéticas que inhiben la ovulación.',
                'Parche anticonceptivo: Es un parche adhesivo que libera hormonas a través de la piel para evitar la ovulación.',
                'Anillo vaginal: Es un anillo flexible que se coloca en la vagina y libera hormonas para prevenir la ovulación.',
              ],
              image: AppImages.method01,
            ),
            const DefaultContent(
              title: 'Anticonceptivos de barrera',
              content: [
                'Condón masculino: Es una funda de látex que se coloca en el pene para evitar que los espermatozoides lleguen al óvulo.',
                'Condón femenino: Es un dispositivo de poliuretano que se coloca en la vagina para bloquear el paso de los espermatozoides.',
                'Diafragma: Es una copa de silicona que se coloca en la vagina y cubre el cuello del útero para evitar la entrada de espermatozoides.',
              ],
              image: AppImages.method02,
            ),
            const DefaultContent(
              title: 'Dispositivos intrauterinos (DIU)',
              content: [
                'DIU de cobre: Es un pequeño dispositivo en forma de T que se coloca dentro del útero y produce una reacción inflamatoria en el útero, lo que dificulta la fertilización y la implantación del óvulo.',
                'DIU hormonal: Es similar al DIU de cobre, pero además libera hormonas que previenen la ovulación y espesan el moco cervical.',
              ],
              image: AppImages.method03,
            ),
            const DefaultContent(
              title: 'Anticonceptivos de emergencia',
              content: [
                'Anticonceptivo de emergencia o "píldora del día después": Es una píldora que contiene una alta dosis de hormonas que se toma después de una relación sexual sin protección para prevenir el embarazo.',
              ],
              image: AppImages.method04,
            ),
            const DefaultContent(
              title: 'Métodos de fertilidad',
              content: [
                'Método de la temperatura basal: Se basa en el seguimiento de la temperatura corporal basal para identificar los días fértiles.',
                'Método del moco cervical: Consiste en observar los cambios en el moco cervical para determinar los días fértiles y no fértiles.',
              ],
              image: AppImages.method05,
            ),
          ],
        ),
      ),
    );
  }
}

class DefaultContent extends StatelessWidget {
  const DefaultContent({
    super.key,
    required this.title,
    required this.content,
    required this.image,
  });

  final String title;
  final List<String> content;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h),
        Text(
          title,
          style: TextStylesUtils.titleStyle(),
        ),
        SizedBox(height: 10.h),
        ...content.map(
          (e) => Column(
            children: [
              Text(
                '• $e',
                style: TextStylesUtils.normalStyle(),
              ),
              SizedBox(height: 10.h),
            ],
          ),
        ),
        Image.asset(
          image,
          height: 0.3.sh,
        ),
      ],
    );
  }
}
