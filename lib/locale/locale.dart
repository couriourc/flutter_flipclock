import 'dart:ui';

import 'package:get/get.dart';

updateLocale(String lang, String type) {
  Get.updateLocale(Locale(lang, type));
}

class LocaleLangMap extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'zh_CN': {
          'application_name': '应用名',
        },
        'en_US': {
          'application_name': 'application name',
        },
      };
}
