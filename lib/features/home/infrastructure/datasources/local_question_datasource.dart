import 'package:young_pregnant_app/features/home/domain/entities/question.dart';
import 'package:young_pregnant_app/utils/app_router/router_utils.dart';

class LocalQuestionDatasource {
  List<Question> getQuestions() {
    List<Question> questions = [
      Question(
        id: 0,
        title: 'Videos de ayuda',
        imageUrl:
            'https://res.cloudinary.com/dqnrmb2sr/image/upload/v1691254748/YoungPregnant/okgr4vosk1ale6parvrd.jpg',
        content: [
          "Videos sobre profesionales",
          "Consecuencias",
          "¿Cómo prevenirlo?"
        ],
        route: AppRoutes.videos,
      ),
      Question(
        id: 1,
        title: 'Comunidad de apoyo y testimonios',
        imageUrl:
            'https://res.cloudinary.com/dqnrmb2sr/image/upload/v1691255592/YoungPregnant/deifz6nxinxf1pu0rely.jpg',
        content: [
          "Testimonios de personas que pasaron por esto",
          "Podrás dar tu testimonio",
          "Podrás aprender a base de experiencias"
        ],
        route: AppRoutes.testimonials,
      ),
      Question(
        id: 2,
        title: 'Conexión con profesionales',
        imageUrl:
            'https://res.cloudinary.com/dqnrmb2sr/image/upload/v1691254743/YoungPregnant/ywc8wd5jzvacozc1paes.jpg',
        content: [
          "Información sobre establecimientos",
          "Números de profesionales",
          "Servicios de ayuda"
        ],
        route: AppRoutes.connection,
      ),
      Question(
        id: 3,
        title: '¿Qué es el embarazo adolescente?',
        imageUrl:
            'https://res.cloudinary.com/dqnrmb2sr/image/upload/v1691254545/YoungPregnant/u1uhvw1bd4cu57nygguw.jpg',
        content: [
          "Conceptos",
          "Causas",
          "Consecuencias",
        ],
        route: AppRoutes.whatIs,
      ),
      Question(
        id: 4,
        title: 'Acceso a métodos anticonceptivos',
        imageUrl:
            'https://res.cloudinary.com/dqnrmb2sr/image/upload/v1691255278/YoungPregnant/iuuimxpdqe3y59sn4k2i.png',
        content: [
          "Requisitos para obtenerlos",
          "¿Dónde encontrarlos?",
          "¿Cómo obtenerlos?",
          "Funciones",
        ],
        route: AppRoutes.methods,
      ),
    ];
    return questions;
  }
}
