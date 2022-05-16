import 'package:dio/dio.dart';

Dio dio = Dio();

String httpBaseUrl = "http://localhost:52798";

Future<String> httpGet(String url) async {
  Response response = await dio.get(httpBaseUrl + url);
  return response.data.toString();
}
