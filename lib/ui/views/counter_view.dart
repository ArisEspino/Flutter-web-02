import 'package:flutter/material.dart';
import 'package:flutter_application_1/ui/shared/custom_flat_button.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterView> {
  int counter = 10;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
   
        Spacer(),
        Text(
          'Contador Stateful',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        FittedBox(
          fit: BoxFit.contain, //se adapta a la pantalla
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Counter: $counter',
              style: TextStyle(
                fontSize: 80,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomFlatButton(
              text: 'Incrementar',
              onPressed: () => setState(() => counter++),
            ),
            CustomFlatButton(
              text: 'Decrementar',
              onPressed: () => setState(() => counter--),
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
