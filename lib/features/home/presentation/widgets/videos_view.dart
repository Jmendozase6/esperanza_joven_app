import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:go_router/go_router.dart';
import 'package:young_pregnant_app/utils/app_images.dart';
import 'package:young_pregnant_app/utils/app_router/router_utils.dart';
import 'package:young_pregnant_app/utils/text_styles_utils.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideosView extends StatelessWidget {
  const VideosView({super.key});

  static const List<String> videos = [
    'h_0iLSqs2a4',
    'rBEerynzD8Y',
    'ISEFgKKJO2A',
    'p8sZnz6ZC3s',
    'fW5UWdPcneg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
          child: Column(
            children: [
              ListTile(
                title: Text(
                  'Estudio Las consecuencias socioeconómicas del embarazo y la maternidad adolescente en Perú.',
                  style: TextStylesUtils.normalStyle(),
                ),
                trailing: IconButton(
                  onPressed: () => context.pushNamed(
                    AppRoutes.videoDetails.routeName,
                    queryParameters: {
                      'id': 'h_0iLSqs2a4',
                    },
                  ),
                  icon: const Icon(TablerIcons.arrow_right),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.2.sw),
                child: const Divider(),
              ),
              ListTile(
                title: Text(
                  'Mamás a los quince años: Los embarazos adolescentes en la selva del Perú | #VideosEC',
                  style: TextStylesUtils.normalStyle(),
                ),
                trailing: IconButton(
                  onPressed: () => context.pushNamed(
                    AppRoutes.videoDetails.routeName,
                    queryParameters: {
                      'id': 'rBEerynzD8Y',
                    },
                  ),
                  icon: const Icon(TablerIcons.arrow_right),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.2.sw),
                child: const Divider(),
              ),
              ListTile(
                title: Text(
                  'Los riesgos y cómo combatir el embarazo adolescente en las regiones del Perú',
                  style: TextStylesUtils.normalStyle(),
                ),
                trailing: IconButton(
                  onPressed: () => context.pushNamed(
                    AppRoutes.videoDetails.routeName,
                    queryParameters: {
                      'id': 'ISEFgKKJO2A',
                    },
                  ),
                  icon: const Icon(TablerIcons.arrow_right),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.2.sw),
                child: const Divider(),
              ),
              ListTile(
                title: Text(
                  'PREVENCIÓN DEL EMBARAZO ADOLESCENTE',
                  style: TextStylesUtils.normalStyle(),
                ),
                trailing: IconButton(
                  onPressed: () => context.pushNamed(
                    AppRoutes.videoDetails.routeName,
                    queryParameters: {
                      'id': 'p8sZnz6ZC3s',
                    },
                  ),
                  icon: const Icon(TablerIcons.arrow_right),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.2.sw),
                child: const Divider(),
              ),
              ListTile(
                title: Text(
                  'Embarazo adolescente en el Perú - UNMSM',
                  style: TextStylesUtils.normalStyle(),
                ),
                trailing: IconButton(
                  onPressed: () => context.pushNamed(
                    AppRoutes.videoDetails.routeName,
                    queryParameters: {
                      'id': 'fW5UWdPcneg',
                    },
                  ),
                  icon: const Icon(TablerIcons.arrow_right),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 0.2.sw),
                child: const Divider(),
              ),
              Image.asset(
                AppImages.aboutUs,
                height: 0.3.sh,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VideoDetailsScreen extends StatefulWidget {
  const VideoDetailsScreen({
    super.key,
    required this.id,
  });
  final String id;

  @override
  State<VideoDetailsScreen> createState() => _VideoDetailsScreenState();
}

class _VideoDetailsScreenState extends State<VideoDetailsScreen> {
  YoutubePlayerController controller =
      YoutubePlayerController(initialVideoId: '');
  @override
  void initState() {
    super.initState();
    controller = YoutubePlayerController(
      initialVideoId: widget.id,
      flags: const YoutubePlayerFlags(
        mute: true,
      ),
    );
    YoutubePlayer(
      controller: controller,
      showVideoProgressIndicator: true,
      progressColors: const ProgressBarColors(
        playedColor: Colors.amber,
        handleColor: Colors.amberAccent,
      ),
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          controller.metadata.title,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (context, player) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // some widgets
              player,
              //some other widgets
            ],
          );
        },
      ),
    );
  }
}
