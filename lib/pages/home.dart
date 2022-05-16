import 'package:flutter/material.dart';
import 'package:flipclock/http/test.dart';
import 'package:flipclock/store/store.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:get/get.dart';

class HomeDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SentenceController sentences = Get.put(SentenceController());

    return Scaffold(
      appBar: AppBar(
        title: const Text("每日一句"),
      ),
      body: SizedBox(
          width: context.mediaQuerySize.width,
          height: 120,
          child: Column(
            children: [
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const SizedBox(height: 8),
                    ListTile(
                      leading: const Icon(Icons.book),
                      title: null,
                      subtitle: Obx(
                        () => Html(
                          data: '${sentences.sentence}',
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        const SizedBox(width: 8),
                        RaisedButton(
                          child: const Text('Get!'),
                          onPressed: () async {
                            final data = await getOneSentence();
                            debugPrint(data);
                            sentences.updateSentence(data);
                          },
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
