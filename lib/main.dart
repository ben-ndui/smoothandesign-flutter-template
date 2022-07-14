import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smoothstarter/core/controllers/login_controller.dart';
import 'package:smoothstarter/core/controllers/smooth_controller.dart';
import 'package:smoothstarter/router/router.gr.dart';

import 'core/configs/default_firebase_options.dart';
import 'core/controllers/forgot_password_controller.dart';
import 'core/controllers/register_controller.dart';

final _appRouter = AppRouter();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // Ideal time to initialize
  //Authentication
  await FirebaseAuth.instance.useAuthEmulator('10.0.2.2', 9099);
  //Function
  await FirebaseAuth.instance.useAuthEmulator('10.0.2.2', 5001);
  //Firestore
  await FirebaseAuth.instance.useAuthEmulator('10.0.2.2', 8080);
  //Hosting
  await FirebaseAuth.instance.useAuthEmulator('10.0.2.2', 5000);
  //Storage
  await FirebaseAuth.instance.useAuthEmulator('10.0.2.2', 9199);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SmoothController()),
        ChangeNotifierProvider(create: (_) => LoginController()),
        ChangeNotifierProvider(create: (_) => RegisterController()),
        ChangeNotifierProvider(create: (_) => ForgotPasswordController()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Starter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
      showSemanticsDebugger: false,
      debugShowCheckedModeBanner: false,
    );
  }
}
