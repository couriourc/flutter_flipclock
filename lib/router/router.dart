import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

import 'package:flipclock/pages/pages.dart';

final $router = FluroRouter();

// var homeHandler = ;

void defineRoutes(FluroRouter router) {
  router.define(
    '/login',
    handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
        return LoginPage();
      },
    ),
  );

  router.define('/', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return const HomeDetailPage();
  }));
}
