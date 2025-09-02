import 'package:go_router/go_router.dart';
import 'package:mobile_app/ui/auth/view_model/auth_view_model.dart';
import 'package:mobile_app/ui/auth/widgets/login_screen.dart';
import 'package:mobile_app/ui/auth/widgets/signup_screen.dart';
import 'package:mobile_app/ui/home/widgets/home_screen.dart';

import 'routes.dart';

GoRouter router(AuthViewModel auth) {
  return GoRouter(
    initialLocation: Routes.login,
    refreshListenable: auth,

    redirect: (context, state) {
      final loggedIn = auth.isLoggedIn;
      final loggingIn = state.matchedLocation == Routes.login;

      if (!loggedIn && !loggingIn) {
        return Routes.login;
      }
      if (loggedIn && loggingIn) {
        return Routes.home;
      }
      return null;
    },

    routes: [
      GoRoute(path: Routes.login, builder: (context, state) => const LoginScreen()),
      GoRoute(path: Routes.signup, builder: (context, state) => const SignupScreen()),
      GoRoute(path: Routes.home, builder: (context, state) => const HomeScreen()),
    ],
  );
}
