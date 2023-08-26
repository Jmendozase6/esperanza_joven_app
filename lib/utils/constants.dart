// ignore_for_file: non_constant_identifier_names

import 'package:flutter_dotenv/flutter_dotenv.dart';

final String SUPABASE_URL = dotenv.get('SUPABASE_URL', fallback: '');
final String SUPABASE_ANON_KEY = dotenv.get('SUPABASE_ANON_KEY', fallback: '');
