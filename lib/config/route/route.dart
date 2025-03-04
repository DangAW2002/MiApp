import 'package:go_router/go_router.dart';
import 'package:miapp/features/auth/presentation/pages/login.dart';
import 'package:miapp/features/main/presentation/pages/main_layout.dart';

class AppRoute {
  static final router = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
      GoRoute(path: '/main', builder: (context, state) => const MainLayout()),
    ],
  );
}
