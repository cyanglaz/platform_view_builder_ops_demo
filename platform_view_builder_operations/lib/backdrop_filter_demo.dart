import 'dart:ui';

import 'package:flutter/material.dart';
import 'demo_page.dart';

class BackdropFilterDemo extends DemoPage {
  const BackdropFilterDemo({Key? key})
      : super('Backdrop filter filter demo', key: key);

  @override
  Widget build(BuildContext context) {
    Widget comparingWidget = super.build(context);
    return Stack(
      children: [
        comparingWidget,
        BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Center(
            child: Container(
              alignment: Alignment.center,
              width: 200.0,
              height: 200.0,
              color: Colors.green,
              child: const Text('Hello World'),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget topWidget() {
    return regularWidget();
  }

  @override
  Widget bottomWidget() {
    return platformViewWidget();
  }
}
