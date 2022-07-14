import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smoothstarter/core/controllers/smooth_controller.dart';
import 'package:smoothstarter/router/router.gr.dart';

final _appRouter = AppRouter();

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SmoothController()),
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
