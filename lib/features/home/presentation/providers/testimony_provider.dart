import 'package:filter_profanity/filter_profanity.dart';
import 'package:flutter/widgets.dart';
import 'package:young_pregnant_app/features/home/domain/entities/testimony.dart';
import 'package:young_pregnant_app/features/home/infrastructure/datasources/testimonials_datasource.dart';

class TestimonyProvider extends ChangeNotifier {
  final author = TextEditingController();
  final content = TextEditingController();
  final testimonials = <Testimony>[];
  bool _isLoading = false;
  bool _isSending = false;

  final datasource = TestimonialDatasource();

  bool get isLoading => _isLoading;
  bool get isSending => _isSending;

  TestimonyProvider() {
    getTestimonials();
  }

  set isLoading(bool isLoading) {
    _isLoading = isLoading;
    notifyListeners();
  }

  set isSending(bool isSending) {
    _isSending = isSending;
    notifyListeners();
  }

  Future<void> getTestimonials() async {
    isLoading = true;
    final response = await datasource.getTestimonials();
    testimonials.addAll(response);
    isLoading = false;
  }

  Future<void> makeTestimony() async {
    if (content.text.trim().isEmpty) return;
    final profanity = hasProfanity(content.text);
    if (profanity) return;

    isSending = true;
    await datasource.makeTestimony(
      author.text,
      content.text,
      true,
    );
    testimonials.insert(
      0,
      Testimony(
        id: 0,
        createdAt: DateTime(2023),
        author: author.text.isEmpty ? 'Anónimo' : author.text,
        content: content.text,
      ),
    );
    author.clear();
    content.clear();
    isSending = false;
  }
}
