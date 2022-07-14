// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i10;
import 'package:flutter/material.dart' as _i11;

import '../views/default-template/dashboard/dashboard.dart' as _i8;
import '../views/default-template/forgot-password/forgot_password_screen.dart'
    as _i6;
import '../views/default-template/home/home_screen.dart' as _i3;
import '../views/default-template/login/login_screen.dart' as _i4;
import '../views/default-template/profile/profile_screen.dart' as _i7;
import '../views/default-template/register/register_screen.dart' as _i5;
import '../views/default-template/settings/settings_screen.dart' as _i9;
import '../views/default-template/splash/splash_screen.dart' as _i2;
import '../views/wrapper/wrapper.dart' as _i1;

class AppRouter extends _i10.RootStackRouter {
  AppRouter([_i11.GlobalKey<_i11.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i10.PageFactory> pagesMap = {
    SmoothRedirection.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.Wrapper());
    },
    SmoothSplash.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.SplashScreen());
    },
    SmoothAccueil.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.HomeScreen());
    },
    SmoothLogin.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.LoginScreen());
    },
    SmoothRegister.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.RegisterScreen());
    },
    SmoothForgotPassword.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ForgotPasswordScreen());
    },
    SmoothAccount.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.ProfileScreen());
    },
    SmoothDashboard.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.Dashboard());
    },
    SmoothSettings.name: (routeData) {
      return _i10.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.SettingsScreen());
    }
  };

  @override
  List<_i10.RouteConfig> get routes => [
        _i10.RouteConfig('/#redirect',
            path: '/', redirectTo: '/Authentication', fullMatch: true),
        _i10.RouteConfig(SmoothRedirection.name, path: '/Authentication'),
        _i10.RouteConfig(SmoothSplash.name, path: '/Splash'),
        _i10.RouteConfig(SmoothAccueil.name, path: '/Accueil'),
        _i10.RouteConfig(SmoothLogin.name, path: '/Connexion'),
        _i10.RouteConfig(SmoothRegister.name, path: '/Creation-de-compte'),
        _i10.RouteConfig(SmoothForgotPassword.name,
            path: '/Mot-de-passe-oublié'),
        _i10.RouteConfig(SmoothAccount.name, path: '/Mon-compte'),
        _i10.RouteConfig(SmoothDashboard.name, path: '/Dashboard'),
        _i10.RouteConfig(SmoothSettings.name, path: '/Parametre')
      ];
}

/// generated route for
/// [_i1.Wrapper]
class SmoothRedirection extends _i10.PageRouteInfo<void> {
  const SmoothRedirection()
      : super(SmoothRedirection.name, path: '/Authentication');

  static const String name = 'SmoothRedirection';
}

/// generated route for
/// [_i2.SplashScreen]
class SmoothSplash extends _i10.PageRouteInfo<void> {
  const SmoothSplash() : super(SmoothSplash.name, path: '/Splash');

  static const String name = 'SmoothSplash';
}

/// generated route for
/// [_i3.HomeScreen]
class SmoothAccueil extends _i10.PageRouteInfo<void> {
  const SmoothAccueil() : super(SmoothAccueil.name, path: '/Accueil');

  static const String name = 'SmoothAccueil';
}

/// generated route for
/// [_i4.LoginScreen]
class SmoothLogin extends _i10.PageRouteInfo<void> {
  const SmoothLogin() : super(SmoothLogin.name, path: '/Connexion');

  static const String name = 'SmoothLogin';
}

/// generated route for
/// [_i5.RegisterScreen]
class SmoothRegister extends _i10.PageRouteInfo<void> {
  const SmoothRegister()
      : super(SmoothRegister.name, path: '/Creation-de-compte');

  static const String name = 'SmoothRegister';
}

/// generated route for
/// [_i6.ForgotPasswordScreen]
class SmoothForgotPassword extends _i10.PageRouteInfo<void> {
  const SmoothForgotPassword()
      : super(SmoothForgotPassword.name, path: '/Mot-de-passe-oublié');

  static const String name = 'SmoothForgotPassword';
}

/// generated route for
/// [_i7.ProfileScreen]
class SmoothAccount extends _i10.PageRouteInfo<void> {
  const SmoothAccount() : super(SmoothAccount.name, path: '/Mon-compte');

  static const String name = 'SmoothAccount';
}

/// generated route for
/// [_i8.Dashboard]
class SmoothDashboard extends _i10.PageRouteInfo<void> {
  const SmoothDashboard() : super(SmoothDashboard.name, path: '/Dashboard');

  static const String name = 'SmoothDashboard';
}

/// generated route for
/// [_i9.SettingsScreen]
class SmoothSettings extends _i10.PageRouteInfo<void> {
  const SmoothSettings() : super(SmoothSettings.name, path: '/Parametre');

  static const String name = 'SmoothSettings';
}
