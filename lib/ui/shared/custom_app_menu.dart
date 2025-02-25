import 'package:flutter/material.dart';
import 'package:flutter_application_1/locator.dart';
import 'package:flutter_application_1/services/navigator_service.dart';
import 'package:flutter_application_1/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    //print('Make AppBar');
    return LayoutBuilder(
      builder:
          (_, constraints) =>
              (constraints.maxWidth > 520)
                  ? _TableDesktopMenu()
                  : _MobileMenu(),
    );
  }
}

class _TableDesktopMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            //onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed:
                () => locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.white,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contador Provider',
            //onPressed: () => Navigator.pushNamed(context, '/provider'),
            onPressed:
                () => locator<NavigationService>().navigateTo('/provider'),
            color: Colors.white,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Otra pagina',
            // onPressed: () => Navigator.pushNamed(context, '/abc123'),
            onPressed: () => locator<NavigationService>().navigateTo('/abc123'),
            color: Colors.white,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Stateful 100',
            // onPressed: () => Navigator.pushNamed(context, '/abc123'),
            onPressed:
                () => locator<NavigationService>().navigateTo('/stateful/100'),
            color: Colors.white,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Provider 200',
            // onPressed: () => Navigator.pushNamed(context, '/abc123'),
            onPressed:
                () => locator<NavigationService>().navigateTo('/provider?q=200'),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomFlatButton(
            text: 'Contador Stateful',
            //onPressed: () => Navigator.pushNamed(context, '/stateful'),
            onPressed:
                () => locator<NavigationService>().navigateTo('/stateful'),
            color: Colors.white,
          ),
          SizedBox(width: 10),
          CustomFlatButton(
            text: 'Contador Provider',
            //onPressed: () => Navigator.pushNamed(context, '/provider'),
            onPressed:
                () => locator<NavigationService>().navigateTo('/provider'),
            color: Colors.white,
          ),
          CustomFlatButton(
            text: 'Otra pagina',
            // onPressed: () => Navigator.pushNamed(context, '/abc123'),
            onPressed: () => locator<NavigationService>().navigateTo('/abc123'),
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
