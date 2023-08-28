import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:young_pregnant_app/features/about_us/presentation/widgets/data_item.dart';
import 'package:young_pregnant_app/features/home/domain/entities/professional.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:young_pregnant_app/utils/app_images.dart';
import 'package:young_pregnant_app/utils/text_styles_utils.dart';

class ConnectionView extends StatelessWidget {
  const ConnectionView({super.key});

  Future<void> _launchUrl(String phone) async {
    final url = Uri.parse(
      'https://wa.me/$phone',
    );
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> copyData(Professional professional, BuildContext context) async {
    Clipboard.setData(ClipboardData(text: professional.toString())).then(
        (value) => ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Copiaste la información del contacto'))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const TitleLine(title: 'Profesionales disponibles'),
              const Text(
                'Mantén presionado un contacto para copiar su información',
              ),
              ...Professional.professionals.map(
                (professional) => Card(
                  child: ListTile(
                    onLongPress: () async =>
                        await copyData(professional, context),
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(professional.image),
                    ),
                    title: Text(professional.name),
                    subtitle: Text(professional.profession),
                    trailing: IconButton(
                      onPressed: () => _launchUrl(professional.phone),
                      icon: const Icon(TablerIcons.brand_whatsapp),
                    ),
                  ),
                ),
              ),
              const TitleLine(title: 'Establecimientos'),
              Card(
                child: ListTile(
                  title: const Text('Policlínico E.S. El Indio'),
                  subtitle: Container(
                    padding: REdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: const Image(
                      image: AssetImage(AppImages.posta),
                    ),
                  ),
                ),
              ),
              const Divider(),
              Text(
                'Este establecimientos de salud Policlinico E.S. El Indio es de categoría I-3 en el distrito de Castilla y corresponden a la Dirección de Salud Piura. Tiene la tarea de proteger la dignidad de las personas, promoviendo la salud, evitando las enfermedades y respaldando la atención integral de salud los habitantes de Piura; presentando y guiando los fines de políticas de salud en acuerdo con todos los sectores públicos y los actores sociales. Cuenta con médicos, tecnología, atención e infraestructura de la mejor calidad, a fín de satisfacer de forma global los requerimientos de salud de la comunidad de Castilla en Piura.',
                style: TextStylesUtils.normalStyle(),
              ),
              const DataItem(
                title: 'Dirección:',
                value: 'A.H El Indio S/N',
                avatar: AppImages.hospital,
              ),
              const DataItem(
                title: 'Teléfono:',
                value: '073-340633',
                avatar: AppImages.phone,
              ),
              const DataItem(
                title: 'Clasificación:',
                value: 'Centro Médico',
              ),
              const DataItem(
                title: 'Categoría:',
                value: 'I-3',
              ),
              const DataItem(
                title: 'Ubigeo:',
                value: '200104',
              ),
              const TitleLine(title: 'Horario'),
              const DataItem(
                title: 'Lunes a Domingo',
                value: '8:00 - 20:00',
                avatar: AppImages.calendar,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TitleLine extends StatelessWidget {
  const TitleLine({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10.h),
        Text(
          title,
          style: TextStylesUtils.titleStyle(),
          overflow: TextOverflow.ellipsis,
        ),
        Padding(
          padding: EdgeInsets.only(right: 0.3.sw),
          child: const Divider(),
        ),
      ],
    );
  }
}
