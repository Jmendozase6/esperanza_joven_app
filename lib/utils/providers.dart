import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:young_pregnant_app/features/home/presentation/providers/providers.dart';
import 'package:young_pregnant_app/shared/providers/providers.dart';

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(create: (context) => QuestionProvider()),
  ChangeNotifierProvider(create: (context) => BottomNavBarProvider()),
  ChangeNotifierProvider(create: (context) => TestimonyProvider()),
];
