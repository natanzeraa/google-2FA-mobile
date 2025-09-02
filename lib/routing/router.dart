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

final auth = context.watch<AuthViewModel>();

final router = GoRouter(
  initialLocation: '/login',
  refreshListenable: auth, 

  redirect: (context, state) {
    final loggedIn = auth.isLoggedIn;
    final loggingIn = state.matchedLocation == '/login';

    if (!loggedIn && !loggingIn) {
      return '/login';  
    }
    if (loggedIn && loggingIn) {
      return '/home'; 
    }
    return null; 
  },

   routes: [
    GoRoute(path: Routes.login, builder: (context, state) => const LoginScreen()),
    GoRoute(path: Routes.signup, builder: (context, state) => const SignupScreen()),
    GoRoute(path: Routes.home, builder: (context, state) => const HomeScreen()),
  ],
);
