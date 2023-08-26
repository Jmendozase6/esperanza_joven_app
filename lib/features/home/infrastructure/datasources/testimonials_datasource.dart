import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:young_pregnant_app/features/home/domain/entities/testimony.dart';

class TestimonialDatasource {
  final supabase = Supabase.instance.client;

  Future<List<Testimony>> getTestimonials() async {
    final testimonials = <Testimony>[];
    final response = await supabase.from('Testimony').select();

    for (var testimony in response) {
      final test = Testimony.fromJson(testimony);
      testimonials.add(test);
    }

    return testimonials;
  }

  Future<bool> makeTestimony(
    String author,
    String content,
    bool isApproved,
  ) async {
    final response = await supabase.from('Testimony').insert({
      'author': author,
      'content': content,
    });

    return response;
  }
}
