import 'package:flipclock/locale/locale.dart';
import 'package:flutter/material.dart';
import 'package:flipclock/pages/pages.dart';
import 'package:flipclock/router/router.dart';
import "package:get/get.dart";
import 'dart:ui' as ui;

void main() => runApp(filpClockApp());

Widget filpClockApp() {
  // S Setup Config
  defineRoutes($router);
  // E Setup Config

  return GetMaterialApp(
    home: const HomeDetailPage(),
    translations: LocaleLangMap(),
    locale: ui.window.locale,
    fallbackLocale: const Locale("en", "US"),
    debugShowCheckedModeBanner: false,
  );
}
