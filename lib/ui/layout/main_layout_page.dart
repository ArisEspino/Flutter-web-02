import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/shared/custom_app_menu.dart';

// ignore: use_key_in_widget_constructors
class MainLayoutPage extends StatelessWidget {
  final Widget child; // Widget hijo que se mostrará en el layout

  const MainLayoutPage({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          children: [
            CustomAppMenu(),
            Spacer(),
            Expanded(child: child),
            Spacer(),
            //ALL: View
          ],
        ),
      ),
    );
  }
}
