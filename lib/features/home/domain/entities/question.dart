import 'package:young_pregnant_app/utils/app_router/router_utils.dart';

class Question {
  final int id;
  final String title;
  final String imageUrl;
  final List<String> content;
  final AppRoutes route;

  Question({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.content,
    required this.route,
  });

  factory Question.defaultModel() {
    return Question(
      id: -1,
      title: 'No se pudo cargar la información',
      imageUrl: '',
      content: [
        'Comprueba tu conexión a internet',
        'Cierra y abre la aplicación',
        'Contacta a un administrador'
      ],
      route: AppRoutes.home,
    );
  }
}
