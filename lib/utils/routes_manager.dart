import 'package:flutter/material.dart';
import 'package:noor_e_umrah/screens/dash_board.dart';
import 'package:noor_e_umrah/screens/home_screen.dart';
import 'package:noor_e_umrah/utils/routes.dart';

class RoutesManager {
  static Route<dynamic> generateRoute(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const MyHomeScreen());
      case Routes.dashBoard:
      return MaterialPageRoute(builder: (_)=> const MyDashBoard());

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            // backgroundColor: AppStyle.purpleDark,
            body: SafeArea(
              child: Center(
                child: Text(
                  'No Route Found',
                  // style: AppStyle.generalTextStyle(
                  //   color: AppStyle.white,
                  // ),
                ),
              ),
            ),
          ),
        );
    }
  }
}
