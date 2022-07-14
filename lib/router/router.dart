
import 'package:auto_route/auto_route.dart';

import '../views/default-template/dashboard/dashboard.dart';
import '../views/default-template/forgot-password/forgot_password_screen.dart';
import '../views/default-template/home/home_screen.dart';
import '../views/default-template/login/login_screen.dart';
import '../views/default-template/profile/profile_screen.dart';
import '../views/default-template/register/register_screen.dart';
import '../views/default-template/settings/settings_screen.dart';
import '../views/default-template/splash/splash_screen.dart';
import '../views/wrapper/wrapper.dart';


@MaterialAutoRouter(
  replaceInRouteName: 'Views,Route',
  routes: <AutoRoute>[
    AutoRoute(page: Wrapper, path: '/Authentication', initial: true, name: 'SmoothRedirection'),
    AutoRoute(page: SplashScreen, path: '/Splash', name: 'SmoothSplash'),
    AutoRoute(page: HomeScreen, path: '/Accueil', name: 'SmoothAccueil'),
    AutoRoute(page: LoginScreen, path: '/Connexion', name: 'SmoothLogin'),
    AutoRoute(page: RegisterScreen, path: '/Creation-de-compte', name: 'SmoothRegister'),
    AutoRoute(page: ForgotPasswordScreen, path: '/Mot-de-passe-oublié', name: 'SmoothForgotPassword'),
    AutoRoute(page: ProfileScreen, path: '/Mon-compte', name: 'SmoothAccount'),
    AutoRoute(page: Dashboard, path: '/Dashboard', name: 'SmoothDashboard'),
    AutoRoute(page: SettingsScreen, path: '/Parametre', name: 'SmoothSettings'),
  ],
)
class $AppRouter {}