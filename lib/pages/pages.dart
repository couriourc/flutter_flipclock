import 'package:fluro/fluro.dart';
import 'package:flutter/cupertino.dart';

import 'home.dart';
export 'home.dart';

// var homeHandler = ;

void defineRoutes(FluroRouter router) {
  router.define('/', handler: Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return HomeDetailPage();
  }));
}
