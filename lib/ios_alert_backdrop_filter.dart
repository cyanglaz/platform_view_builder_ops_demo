import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'demo_page.dart';

class IOSAlertBackdropFilter extends DemoPage {

  const IOSAlertBackdropFilter({Key? key}) : super('IOS Alert Backdrop Filter', key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: _MyHomePage(key: GlobalKey()),
    );
  }
}

class _MyHomePage extends StatefulWidget {

  const _MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<_MyHomePage> {
  Future<void> _handleClickMe() async {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => CupertinoAlertDialog(
        title: Text('Title'),
        content: Text('content'),
        actions: <Widget>[
          CupertinoDialogAction(
            child: Text('Don\'t Allow'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          CupertinoDialogAction(
            child: Text('Allow'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.8,
            child: WebView(
              initialUrl: 'https://flutter.dev/',
            ),
          ),
          CupertinoButton(
            onPressed: _handleClickMe,
            child: new Icon(CupertinoIcons.add),
          ),
        ],
      ),
    );
  }
}