import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/shared/custom_button.dart';

class OtherViews extends StatefulWidget {
  const OtherViews({super.key});

  @override
  State<OtherViews> createState() => _OtherViewstState();
}

class _OtherViewstState extends State<OtherViews> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Hola", style: TextStyle(fontSize: 40, color: Colors.white)),
        CustomButton(
          text: 'Hola soy un boton',
          color: Colors.white,
          onPressed: () {},
        ),
      ],
    );
  }
}
