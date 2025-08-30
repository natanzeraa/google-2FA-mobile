import 'package:mobile_app/ui/login/view_model/login_view_model.dart';
import 'package:mobile_app/ui/login/widgets/login_screen.dart';
import 'package:mobile_app/ui/signup/view_model/signup_view_model.dart';
import 'package:mobile_app/ui/signup/widgets/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

import '../data/repositories/auth/auth_repository.dart';
import 'routes.dart';

GoRouter router(AuthRepository authRepository) => GoRouter(
  initialLocation: Routes.login,
  debugLogDiagnostics: true,
  redirect: _redirect,
  refreshListenable: authRepository,
  routes: [
    GoRoute(
      path: Routes.login,
      builder: (context, state) {
        return LoginScreen(
          viewModel: LoginViewModel(authRepository: context.read()),
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
    // GoRoute(
    //   path: Routes.home,
    //   builder: (context, state) {
    //     final viewModel = HomeViewModel(customerRepository: context.read());
    //     return HomeScreen(viewModel: viewModel);
    //   },
    // ),
    // GoRoute(
    //   path: Routes.customers,
    //   builder: (context, state) {
    //     final viewModel = CustomerViewModel(customerRepository: context.read());
    //     return CustomerScreen(viewModel: viewModel);
    //   },
    // ),
  ],
);

// From https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/redirection.dart
Future<String?> _redirect(BuildContext context, GoRouterState state) async {
  // if the user is not logged in, they need to login
  final loggedIn = await context.read<AuthRepository>().isAuthenticated;
  final loggingIn = state.matchedLocation == Routes.login;
  if (!loggedIn) {
    return Routes.login;
  }

  // if the user is logged in but still on the login page, send them to
  // the home page
  if (loggingIn) {
    return Routes.login;
  }

  // no need to redirect at all
  return null;
}
