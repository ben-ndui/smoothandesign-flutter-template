// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../views/dashboard/dashboard.dart' as _i6;
import '../views/home/home_screen.dart' as _i2;
import '../views/login/login_screen.dart' as _i3;
import '../views/profile/profile_screen.dart' as _i5;
import '../views/register/register_screen.dart' as _i4;
import '../views/settings/settings_screen.dart' as _i7;
import '../views/splash/splash_screen.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SmoothSplash.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashScreen());
    },
    SmoothAccueil.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    },
    SmoothLogin.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.LoginScreen());
    },
    SmoothRegister.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.RegisterScreen());
    },
    SmoothAccount.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.ProfileScreen());
    },
    SmoothDashboard.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.Dashboard());
    },
    SmoothSettings.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.SettingsScreen());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig('/#redirect',
            path: '/', redirectTo: '/Splash', fullMatch: true),
        _i8.RouteConfig(SmoothSplash.name, path: '/Splash'),
        _i8.RouteConfig(SmoothAccueil.name, path: '/Accueil'),
        _i8.RouteConfig(SmoothLogin.name, path: '/Connexion'),
        _i8.RouteConfig(SmoothRegister.name, path: '/Creation-de-compte'),
        _i8.RouteConfig(SmoothAccount.name, path: '/Mon-compte'),
        _i8.RouteConfig(SmoothDashboard.name, path: '/Dashboard'),
        _i8.RouteConfig(SmoothSettings.name, path: '/Parametre')
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SmoothSplash extends _i8.PageRouteInfo<void> {
  const SmoothSplash() : super(SmoothSplash.name, path: '/Splash');

  static const String name = 'SmoothSplash';
}

/// generated route for
/// [_i2.HomeScreen]
class SmoothAccueil extends _i8.PageRouteInfo<void> {
  const SmoothAccueil() : super(SmoothAccueil.name, path: '/Accueil');

  static const String name = 'SmoothAccueil';
}

/// generated route for
/// [_i3.LoginScreen]
class SmoothLogin extends _i8.PageRouteInfo<void> {
  const SmoothLogin() : super(SmoothLogin.name, path: '/Connexion');

  static const String name = 'SmoothLogin';
}

/// generated route for
/// [_i4.RegisterScreen]
class SmoothRegister extends _i8.PageRouteInfo<void> {
  const SmoothRegister()
      : super(SmoothRegister.name, path: '/Creation-de-compte');

  static const String name = 'SmoothRegister';
}

/// generated route for
/// [_i5.ProfileScreen]
class SmoothAccount extends _i8.PageRouteInfo<void> {
  const SmoothAccount() : super(SmoothAccount.name, path: '/Mon-compte');

  static const String name = 'SmoothAccount';
}

/// generated route for
/// [_i6.Dashboard]
class SmoothDashboard extends _i8.PageRouteInfo<void> {
  const SmoothDashboard() : super(SmoothDashboard.name, path: '/Dashboard');

  static const String name = 'SmoothDashboard';
}

/// generated route for
/// [_i7.SettingsScreen]
class SmoothSettings extends _i8.PageRouteInfo<void> {
  const SmoothSettings() : super(SmoothSettings.name, path: '/Parametre');

  static const String name = 'SmoothSettings';
}
