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

    return testimonyProvider.isLoading
        ? const LoadingView()
        : SingleChildScrollView(
            child: Column(
              children: [
                const TestimonyForm(),
                const Divider(),
                SizedBox(
                  height: 0.7.sh,
                  child: ListView.separated(
                    itemCount: testimonyProvider.testimonials.length,
                    itemBuilder: (BuildContext context, int index) {
                      final test = testimonyProvider.testimonials[index];
                      return ListTile(
                        leading: CircleAvatar(
                          child: Text(
                            test.author.substring(0, 2),
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

    return SizedBox(
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
                hintText: 'Nombres, si queda vacío se publicará cómo anónimo',
              ),
            ),
            TextFormField(
              controller: testimonyProvider.content,
              maxLength: 400,
              keyboardType: TextInputType.multiline,
              maxLines: 2,
              decoration: const InputDecoration.collapsed(
                hintText: 'Tu testimonio',
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
