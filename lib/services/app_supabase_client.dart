import 'package:flutter/foundation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:young_pregnant_app/utils/constants.dart';

class AppSupabaseClient {
  static Future<void> init() async {
    await Supabase.initialize(
      url: SUPABASE_URL,
      anonKey: SUPABASE_ANON_KEY,
      debug: kDebugMode,
    );
  }
}
