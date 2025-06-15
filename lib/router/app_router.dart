import 'package:confesso/router/router_path.dart';
import 'package:confesso/router/router_screens.dart';
import 'package:go_router/go_router.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: AppRoutes.homeScreen,
  routes: buildRoutes(),
);
