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
        //         ClipRect(
        //   clipper: RectClipper(),
        // child:comparingWidget,
        //         ),
        ClipRect(
          clipper: RectClipper(),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
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
    return ClipRRect(child:platformViewWidget(), borderRadius:BorderRadius.all(Radius.circular(50)));
  }
}

class RectClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    // TODO: implement getClip
    return const Rect.fromLTWH(200, 0, 100, 600);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }

}