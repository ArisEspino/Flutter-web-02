import 'package:fluro/fluro.dart';
import 'package:flutter_application_1/ui/views/counter_provider_view.dart';
import 'package:flutter_application_1/ui/views/view_404.dart';

import '../ui/views/counter_view.dart';


  //Manejadores (Handlers)
final counterHandler = Handler(
    handlerFunc: (context, params) {
      return CounterView(base: params['base']?[0] ?? '');
    },
  );

  //Provider
  final providerHandler = Handler(
    handlerFunc: (context, params) {
      print(params);
      return CounterProviderView(base: params['q']?[0] ?? '80');
    },
  );

  final dashboardUserHandler = Handler(
    handlerFunc: (context, params) {
      print(params);
      return View404();
    },
  );


  //404
final pageNotFound = Handler(handlerFunc: (_, __) => View404());
