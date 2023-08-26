import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:young_pregnant_app/features/home/domain/entities/question.dart';
import 'package:young_pregnant_app/features/home/infrastructure/datasources/local_question_datasource.dart';
import 'package:young_pregnant_app/features/home/presentation/providers/questions_provider.dart.dart';
import 'package:young_pregnant_app/features/home/presentation/widgets/widgets.dart';
import 'package:young_pregnant_app/utils/app_router/router_utils.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final questionProvider = context.watch<QuestionProvider>();
    final questions = LocalQuestionDatasource().getQuestions();

    return SingleChildScrollView(
      child: Column(
        children: [
          const TitleSection(),
          SizedBox(
            height: 0.5.sh,
            child: Swiper(
              onIndexChanged: (value) =>
                  questionProvider.questionCardIndex = value,
              itemCount: questions.length,
              scrollDirection: Axis.horizontal,
              viewportFraction: 0.8,
              autoplay: true,
              scale: 0.9,
              itemBuilder: (_, index) {
                final question = questions[index];
                return QuestionCard(
                  question: question,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5.h, left: 0.3.sw, right: 0.3.sw),
            child: const Divider(),
          ),
          SizedBox(
            height: 0.05.sh,
            child: PageView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                ...questions.map(
                  (e) => Container(
                    alignment: Alignment.center,
                    child: Text(
                      questions[questionProvider.questionCardIndex].title,
                      style: TextStyle(
                        fontSize: 15.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    super.key,
    required this.question,
  });

  final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.w),
      height: 0.5.sh,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20.r),
            child: Image.network(
              question.imageUrl,
              fit: BoxFit.cover,
              width: 375.w,
              height: 0.5.sh,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.black38,
              borderRadius: BorderRadius.circular(20.r),
            ),
          ),
          Padding(
            padding: REdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  question.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 21.sp,
                    color: Colors.white,
                  ),
                ),
                const Spacer(flex: 2),
                Text(
                  'Podrás ver información sobre',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 17.sp,
                    color: Colors.white,
                  ),
                ),
                ...question.content.map(
                  (text) => Text(
                    '• $text',
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(),
                SizedBox(
                  width: 0.7.sw,
                  height: 0.08.sh,
                  child: FilledButton.tonal(
                    onPressed: () {
                      context.pushNamed(question.route.routeName);
                    },
                    style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
                    ),
                    child: Text(
                      'Informarme',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
