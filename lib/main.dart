import 'package:confesso/router/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // splashFactory: InkRipple.splashFactory,
        splashColor: Colors.grey.withOpacity(0.2),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
        ),
        brightness: Brightness.light,
        scaffoldBackgroundColor: Colors.white,
        colorScheme: const ColorScheme.light(
          surface: Colors.white,
        ),
        useMaterial3: true,
      ),
    );
  }
}
