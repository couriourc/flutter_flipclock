import 'http.dart';

Future<String> getOneSentence() async {
  return await httpGet("/api/yiyan/index.php");
}
