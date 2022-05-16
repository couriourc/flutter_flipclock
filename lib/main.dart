import 'package:flipclock/pages/pages.dart';
import 'package:flipclock/router/router.dart';
import "package:get/get.dart";
import 'package:flutter/material.dart';

void main() => runApp(GetMaterialApp(home: Home()));

class Home extends StatelessWidget {
  @override
  Widget build(context) {
    // S Setup Config
    defineRoutes($router);
    // E Setup Config

    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          SizedBox(
            width: 200,
            height: 100,
            child: ElevatedButton(
              onPressed: () {
                $router.navigateTo(context, "/home");
              },
              child: const Text("每日一句"),
            ),
          )
        ],
      ),
    );
  }
}
