import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'demo_page.dart';

class IOSNavigationBarBackdropFilter extends DemoPage {
  const IOSNavigationBarBackdropFilter({Key? key}) : super('IOS NavigationBar BackdropFilter', key: key,);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(),
        child: WebView(
          initialUrl: 'https://flutter.dev',
        ),
      ),
    );
  }
}