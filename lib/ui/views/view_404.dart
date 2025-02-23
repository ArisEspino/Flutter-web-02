import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/shared/custom_flat_button.dart';

// ignore: use_key_in_widget_constructors
class View404 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '404',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text('No se encontro la pagina', style: TextStyle(fontSize: 20)),
          CustomFlatButton(
            text: 'Regresar',
            onPressed: () => Navigator.pushNamed(context, '/stateful'),
          ),
        ],
      ),
    );
  }
}
