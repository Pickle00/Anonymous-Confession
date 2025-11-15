import 'package:confesso/models/model.dart';
import 'package:confesso/router/router_path.dart';
import 'package:confesso/screens/create_post/create_post.dart';
import 'package:confesso/screens/home/home_screen.dart';
import 'package:confesso/screens/home/post_screen.dart';
import 'package:confesso/screens/login/auth_screen.dart';
import 'package:confesso/screens/onboarding/onboarding.dart';
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
    GoRoute(
      name: AppRoutes.createPost,
      path: AppRoutes.createPost,
      builder: (context, state) {
        return const CreatePost();
      },
    ),
    GoRoute(
      name: AppRoutes.postScreen,
      path: AppRoutes.postScreen,
      builder: (context, state) {
        final postData = state.extra as PostModel;
        return PostScreen(postData: postData);
      },
    ),
    GoRoute(
      path: AppRoutes.onBoardingScreen,
      name: AppRoutes.onBoardingScreen,
      builder: (context, state) {
        return const OnBoardingScreen();
      },
    ),
    GoRoute(
      path: AppRoutes.authScreen,
      name: AppRoutes.authScreen,
      builder: (context, state) {
        return const SignupScreen();
      },
    ),
  ];
}
