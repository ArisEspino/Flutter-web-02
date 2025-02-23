import 'package:flutter/material.dart';
import 'package:flutter_application_1/provider/counter_provider_page.dart';
import 'package:flutter_application_1/ui/shared/custom_flat_button.dart';
import 'package:provider/provider.dart';

class CounterProviderView extends StatelessWidget {
  const CounterProviderView({super.key});

  @override
  //Make Provider
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterProvider(),
      child: _CounterProviderViewBody(),
    );
  }
}


class _CounterProviderViewBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Obtiene la instancia del provider.
    final counterProvider = Provider.of<CounterProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
    
        Spacer(),
        Text(
          'Contador Provider Stateful',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        FittedBox(
          fit: BoxFit.contain, //se adapta a la pantalla
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Counter: ${counterProvider.counter}',
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
              onPressed: () => counterProvider.increment(),
            ),
            CustomFlatButton(
              text: 'Decrementar',
              onPressed: () => counterProvider.decrement(),
            ),
          ],
        ),
        Spacer(),
      ],
    );
  }
}
