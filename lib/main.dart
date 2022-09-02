import 'package:flutter/material.dart';
import 'package:noor_e_umrah/utils/routes.dart';
import 'package:noor_e_umrah/utils/routes_manager.dart';
import 'package:noor_e_umrah/utils/string_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: StringManager.noorEUmrah,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RoutesManager.generateRoute,
      initialRoute: Routes.dashBoard,
    );
  }
}
