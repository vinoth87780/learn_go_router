import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_go_router/project/route/app_router_constants.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'Home',
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.purple,
            ),
            onPressed: () {
              GoRouter.of(context).pushNamed(
                MyAppRouteConstants.profileRouteName,
              );
            },
            child: const Text(
              'profile page',
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.purple,
            ),
            onPressed: () {
              GoRouter.of(context).pushNamed(
                MyAppRouteConstants.contactUsRouteName,
              );
            },
            child: const Text(
              'contact us page',
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.purple,
            ),
            onPressed: () {
              GoRouter.of(context).pushNamed(
                MyAppRouteConstants.aboutRouteName,
              );
            },
            child: const Text(
              'about page',
            ),
          ),
        ],
      ),
    );
  }
}
