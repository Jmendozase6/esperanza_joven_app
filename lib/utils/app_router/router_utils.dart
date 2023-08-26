enum AppRoutes {
  home,
  concept,
  aboutUs,
  contact,
  whatIs,
  methods,
  videos,
  videoDetails,
  testimonials,
}

extension AppRoutesExtension on AppRoutes {
  String get routePath {
    switch (this) {
      case AppRoutes.home:
        return '/';
      case AppRoutes.concept:
        return 'concept';
      case AppRoutes.aboutUs:
        return '/aboutUs';
      case AppRoutes.contact:
        return '/contact';
      case AppRoutes.whatIs:
        return '/whatIs';
      case AppRoutes.methods:
        return '/methods';
      case AppRoutes.videos:
        return '/videos';
      case AppRoutes.videoDetails:
        return '/videoDetails';
      case AppRoutes.testimonials:
        return '/testimonials';
    }
  }

  String get routeName {
    switch (this) {
      case AppRoutes.home:
        return 'home';
      case AppRoutes.concept:
        return 'concept';
      case AppRoutes.aboutUs:
        return 'aboutUs';
      case AppRoutes.contact:
        return 'contact';
      case AppRoutes.whatIs:
        return 'whatIs';
      case AppRoutes.methods:
        return 'methods';
      case AppRoutes.videos:
        return 'videos';
      case AppRoutes.videoDetails:
        return 'videoDetails';
      case AppRoutes.testimonials:
        return 'testimonials';
    }
  }
}
