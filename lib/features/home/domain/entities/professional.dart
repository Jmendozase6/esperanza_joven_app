import 'package:young_pregnant_app/utils/app_images.dart';

class Professional {
  final String name;
  final String phone;
  final String profession;
  final String image;

  Professional({
    required this.name,
    required this.phone,
    required this.profession,
    required this.image,
  });

  static final professionals = [
    Professional(
      name: 'María Isabel Rivas Montero',
      phone: '51973694221',
      profession: 'Enfermera',
      image: AppImages.nurse,
    ),
    Professional(
      name: 'Rossi Ortiz',
      phone: '51931793465',
      profession: 'Enfermera',
      image: AppImages.nurse,
    ),
    Professional(
      name: 'Roxana Mondragón Llascsahuanga',
      phone: '51952965337',
      profession: 'Enfermera y psicóloga',
      image: AppImages.nurse,
    ),
    Professional(
      name: 'David Francisco temoche López',
      phone: '51921819899',
      profession: 'Doctorado de medicina general',
      image: AppImages.doctor,
    ),
    Professional(
      name: 'Rocío Borrero',
      phone: '51966893627',
      profession: 'Obstetra',
      image: AppImages.nurse,
    ),
  ];

  @override
  String toString() {
    return 'Nombre: $name\nTeléfono: ${phone.substring(2)}\nProfesión: $profession';
  }
}
