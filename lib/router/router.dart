import 'package:fluro/fluro.dart';
import 'package:flutter_application_1/router/route_handlers.dart';

class Flurorouter {
  static final FluroRouter router = new FluroRouter();

  static void configureRoutes() {
    router.define(
      '/',
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/stateful',
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/stateful/:base',
      handler: counterHandler,
      transitionType: TransitionType.fadeIn,
    );
    router.define(
      '/provider',
      handler: providerHandler,
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/dashboard/users/:userid/:roleid',
      handler: dashboardUserHandler,
      transitionType: TransitionType.fadeIn,
    );

    //404 views
    router.notFoundHandler = pageNotFound;
  }
}
