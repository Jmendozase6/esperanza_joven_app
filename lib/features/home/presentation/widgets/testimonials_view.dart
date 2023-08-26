import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:young_pregnant_app/features/home/presentation/providers/providers.dart';
import 'package:young_pregnant_app/shared/widgets/loading_view.dart';

class TestimonialsView extends StatelessWidget {
  const TestimonialsView({super.key});

  @override
  Widget build(BuildContext context) {
    final testimonyProvider = context.watch<TestimonyProvider>();

    return SingleChildScrollView(
      child: Column(
        children: [
          const TestimonyForm(),
          const Divider(),
          testimonyProvider.isLoading
              ? SizedBox(
                  height: 0.7.sh,
                  child: const LoadingView(),
                )
              : SizedBox(
                  height: 0.7.sh,
                  child: ListView.separated(
                    itemCount: testimonyProvider.testimonials.length,
                    itemBuilder: (BuildContext context, int index) {
                      final test = testimonyProvider.testimonials[index];
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text(
                            test.author.substring(0, 1),
                          ),
                        ),
                        title: Text('Autor: ${test.author}'),
                        subtitle: Text(test.content),
                      );
                    },
                    separatorBuilder: (_, __) => const Divider(),
                  ),
                ),
        ],
      ),
    );
  }
}

class TestimonyForm extends StatelessWidget {
  const TestimonyForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final testimonyProvider = context.watch<TestimonyProvider>();

    return testimonyProvider.isSending
        ? SizedBox(
            height: 0.2.sh,
            child: const LoadingView(),
          )
        : SizedBox(
            height: 0.2.sh,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  TextFormField(
                    controller: testimonyProvider.author,
                    maxLength: 20,
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Nombres, pór defecto Anónimo',
                    ),
                  ),
                  TextFormField(
                    controller: testimonyProvider.content,
                    maxLength: 400,
                    keyboardType: TextInputType.multiline,
                    maxLines: 2,
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Tú testimonio',
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    width: 0.8.sw,
                    child: FilledButton.tonal(
                      onPressed: () => testimonyProvider.makeTestimony(),
                      child: const Text('Enviar'),
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
