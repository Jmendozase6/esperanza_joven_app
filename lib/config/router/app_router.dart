import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:young_pregnant_app/features/about_us/presentation/screens/about_us_screen.dart';

import 'package:young_pregnant_app/features/home/presentation/screens/screens.dart';
import 'package:young_pregnant_app/features/home/presentation/widgets/videos_view.dart';
import 'package:young_pregnant_app/shared/widgets/custom_bottom_nav_bar.dart';
import 'package:young_pregnant_app/utils/app_router/custom_transition_page.dart';
import 'package:young_pregnant_app/utils/app_router/router_utils.dart';

class AppRouter {
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();

  static final appRouter = GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: AppRoutes.whatIs.routePath,
        name: AppRoutes.whatIs.routeName,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const WhatIsScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.methods.routePath,
        name: AppRoutes.methods.routeName,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const MethodsScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.videos.routePath,
        name: AppRoutes.videos.routeName,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const VideosScreen(),
        ),
      ),
      GoRoute(
        path: '${AppRoutes.videoDetails.routePath}/id',
        name: AppRoutes.videoDetails.routeName,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: VideoDetailsScreen(
            id: state.queryParameters['id'] as String,
          ),
        ),
      ),
      GoRoute(
        path: AppRoutes.testimonials.routePath,
        name: AppRoutes.testimonials.routeName,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const TestimonialsScreen(),
        ),
      ),
      GoRoute(
        path: AppRoutes.connection.routePath,
        name: AppRoutes.connection.routeName,
        parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: const ConnectionScreen(),
        ),
      ),
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        // parentNavigatorKey: _rootNavigatorKey,
        pageBuilder: (context, state, child) => buildPageWithDefaultTransition(
          context: context,
          state: state,
          child: CustomBottomNavBar(body: child),
        ),
        routes: [
          GoRoute(
            path: AppRoutes.home.routePath,
            name: AppRoutes.home.routeName,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) => buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: const HomeScreen(),
            ),
          ),
          GoRoute(
            path: AppRoutes.aboutUs.routePath,
            name: AppRoutes.aboutUs.routeName,
            parentNavigatorKey: _shellNavigatorKey,
            pageBuilder: (context, state) => buildPageWithDefaultTransition(
              context: context,
              state: state,
              child: const AboutUsScreen(),
            ),
          ),
          // GoRoute(
          //   path: AppRoutes.contact.routePath,
          //   name: AppRoutes.contact.routeName,
          //   parentNavigatorKey: _shellNavigatorKey,
          //   pageBuilder: (context, state) => buildPageWithDefaultTransition(
          //     context: context,
          //     state: state,
          //     child: const ContactScreen(),
          //   ),
          // ),
        ],
      ),
    ],
  );
}
