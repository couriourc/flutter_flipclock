import 'package:flutter/material.dart';
import 'package:flipclock/store/store.dart';
import 'package:get/get.dart';

class HomeDetailPage extends StatelessWidget {
  const HomeDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("application_name".tr),
      ),
      body: SizedBox(
          width: context.mediaQuerySize.width,
          height: 120,
          child: IntrinsicHeight(

            child: Column(
              children: [
                MergeSemantics(
                  child: Row(
                    children: <Widget>[
                      Checkbox(
                        value: true,
                        onChanged: (bool? value) {},
                      ),
                      Text('application_name'.tr)
                    ],
                  ),
                )
              ],
            ),
            // child: [
            //   // Card(
            //   //   child: Column(
            //   //     mainAxisSize: MainAxisSize.min,
            //   //     children: <Widget>[
            //   //       const SizedBox(height: 8),
            //   //       ListTile(
            //   //         leading: const Icon(Icons.book),
            //   //         title: null,
            //   //         subtitle: Obx(
            //   //           () => Html(
            //   //             data: '${sentences.sentence}',
            //   //           ),
            //   //         ),
            //   //       ),
            //   //       Row(
            //   //         mainAxisAlignment: MainAxisAlignment.end,
            //   //         children: <Widget>[
            //   //           const SizedBox(width: 8),
            //   //           RaisedButton(
            //   //             child: const Text('Get!'),
            //   //             onPressed: () async {
            //   //               final data = await getOneSentence();
            //   //               debugPrint(data);
            //   //               sentences.updateSentence(data);
            //   //             },
            //   //           ),
            //   //           const SizedBox(width: 8),
            //   //         ],
            //   //       ),
            //   //     ],
            //   //   ),
            //   // ),
            // ],
          )),
    );
  }
}
