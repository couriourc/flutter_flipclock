import 'package:get/get.dart';

class SentenceController extends GetxController {
  RxString sentence = "待查询".obs;
  updateSentence(String data) {
    sentence.value = data;
  }
}

