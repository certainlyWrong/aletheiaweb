import 'package:go_router/go_router.dart';

import '../pages/home_page.dart';
import '../services/seo_service.dart';

enum Routes {
  home(name: 'home', path: '/');

  const Routes({required this.name, required this.path});

  final String name;
  final String path;
}

final routes = GoRouter(
  debugLogDiagnostics: true,
  routes: [
    GoRoute(
      path: Routes.home.path,
      name: Routes.home.name,
      builder: (context, state) {
        SeoService().title = 'Aletheia';
        return const HomePage();
      },
    ),
  ],
);
