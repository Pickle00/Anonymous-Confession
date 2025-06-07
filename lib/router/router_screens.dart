import 'package:confesso/router/router_path.dart';
import 'package:confesso/screens/home/home_screen.dart';
import 'package:go_router/go_router.dart';

List<GoRoute> buildRoutes() {
  return [
    GoRoute(
      name: AppRoutes.homeScreen,
      path: AppRoutes.homeScreen,
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
  ];
}
