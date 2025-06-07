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
        scaffoldBackgroundColor: const Color.fromARGB(255, 245, 245, 245),
        colorScheme: const ColorScheme.light(
          background: Colors.white,
          surface: Colors.white,
        ),
        useMaterial3: true,
      ),
    );
  }
}
