import 'http.dart';

Future<String> userInfo() async {
  return await httpGet("/");
}
