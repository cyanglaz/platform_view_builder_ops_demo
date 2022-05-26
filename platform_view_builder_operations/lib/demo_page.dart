import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DemoPage extends StatelessWidget {
  const DemoPage(this.title, {Key? key}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return _comparingWidget();
  }

  Widget _comparingWidget() {
    return Column(
      children: <Widget>[
        Expanded(child: topWidget()),
        Expanded(child: bottomWidget())
      ],
    );
  }

  Widget topWidget() {
    throw UnimplementedError();
  }
  Widget bottomWidget() {
    throw UnimplementedError();
  }

  Widget regularWidget() {
    return Container(
      color: Colors.yellowAccent,
      child: const Center(
        child: Text('This section is a flutter widget.'),
      ),
    );
  }

  // Widget platformViewWidget() {
  //   return const WebView(
  //     initialUrl: 'https://flutter.dev',
  //   );
  // }
  Widget platformViewWidget() {
    return const UiKitView(viewType: 'DemoPlatformView');
  }
}
