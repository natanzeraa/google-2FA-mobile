import 'package:go_router/go_router.dart';
import 'package:mobile_app/data/repositories/auth/auth_repository.dart';
import 'package:mobile_app/data/services/api/auth_service.dart';
import 'package:mobile_app/ui/home/widgets/home_screen.dart';
import 'package:mobile_app/ui/login/view_model/login_view_model.dart';
import 'package:mobile_app/ui/login/widgets/login_screen.dart';
import 'package:mobile_app/ui/signup/view_model/signup_view_model.dart';
import 'package:mobile_app/ui/signup/widgets/signup_screen.dart';
import 'package:provider/provider.dart';

import 'routes.dart';

final GoRouter router = GoRouter(
  initialLocation: '/login',
  routes: [
    GoRoute(
      path: Routes.login,
      builder: (context, state) {
        return ChangeNotifierProvider(
          create: (_) =>
              LoginViewModel(repository: AuthRepository(AuthService())),
          child: const LoginScreen(),
        );
      },
    ),

    GoRoute(
      path: Routes.signup,
      builder: (context, state) {
        return SignupScreen(
          viewModel: SignupViewModel(authRepository: context.read()),
        );
      },
    ),

    GoRoute(path: Routes.home, builder: (context, state) => const HomeScreen()),
  ],
  redirect: (context, state) {
    final token = AuthRepository(AuthService()).getTokenSync();
    final loggingIn = state.path == Routes.login;

    if (token != null && token.isNotEmpty) {
      return loggingIn ? Routes.home : null;
    } else {
      return loggingIn ? null : Routes.login;
    }
  },
);
