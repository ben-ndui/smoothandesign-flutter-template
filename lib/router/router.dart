
import 'package:auto_route/auto_route.dart';

import '../views/dashboard/dashboard.dart';
import '../views/home/home_screen.dart';
import '../views/login/login_screen.dart';
import '../views/profile/profile_screen.dart';
import '../views/register/register_screen.dart';
import '../views/settings/settings_screen.dart';
import '../views/splash/splash_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Views,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashScreen, initial: true, path: '/Splash', name: 'SmoothSplash'),
    AutoRoute(page: HomeScreen, path: '/Accueil', name: 'SmoothAccueil'),
    AutoRoute(page: LoginScreen, path: '/Connexion', name: 'SmoothLogin'),
    AutoRoute(page: RegisterScreen, path: '/Creation-de-compte', name: 'SmoothRegister'),
    AutoRoute(page: ProfileScreen, path: '/Mon-compte', name: 'SmoothAccount'),
    AutoRoute(page: Dashboard, path: '/Dashboard', name: 'SmoothDashboard'),
    AutoRoute(page: SettingsScreen, path: '/Parametre', name: 'SmoothSettings'),
  ],
)
class $AppRouter {}