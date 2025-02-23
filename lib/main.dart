import 'package:flutter/material.dart';
import 'package:flutter_application_1/locator.dart';
import 'package:flutter_application_1/router/route_generator.dart';
import 'package:flutter_application_1/services/navigator_service.dart';
import 'package:flutter_application_1/ui/layout/main_layout_page.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rutas app',
      //My route
      initialRoute: '/stateful',
      //Mi generador de rutas
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(child: child ?? Container());
      },
    );
  }
}
