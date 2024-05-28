import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_go_router/pages/about.dart';
import 'package:learn_go_router/pages/contact_us.dart';
import 'package:learn_go_router/pages/error_screen.dart';
import 'package:learn_go_router/pages/home.dart';
import 'package:learn_go_router/pages/profile.dart';
import 'package:learn_go_router/project/route/app_router_constants.dart';

class MyAppRouter {
  final GoRouter router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        name: MyAppRouteConstants.homeRouteName,
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const Home();
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.profileRouteName,
        path: '/profile',
        builder: (BuildContext context, GoRouterState state) {
          return const Profile();
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.aboutRouteName,
        path: '/about',
        builder: (BuildContext context, GoRouterState state) {
          return const About();
        },
      ),
      GoRoute(
        name: MyAppRouteConstants.contactUsRouteName,
        path: '/contact_us',
        builder: (BuildContext context, GoRouterState state) {
          return const ContactUs();
        },
      ),
    ],
    errorBuilder: (BuildContext context, GoRouterState state) {
      return const ErrorScreen();
    },
  );
}
