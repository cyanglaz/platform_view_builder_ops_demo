import 'package:flutter/material.dart';
import 'demo_page.dart';

class ShaderMaskDemo extends DemoPage {
  const ShaderMaskDemo({Key? key}) : super('Shader Mask demo', key: key);

  @override
  Widget topWidget() {
    return ShaderMask(
        shaderCallback: (Rect bounds) {
          return RadialGradient(
            center: Alignment.topLeft,
            radius: 1.0,
            colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
            tileMode: TileMode.mirror,
          ).createShader(bounds);
        },
        child: regularWidget());
  }

  @override
  Widget bottomWidget() {
    return ShaderMask(
        shaderCallback: (Rect bounds) {
          return RadialGradient(
            center: Alignment.topLeft,
            radius: 1.0,
            colors: <Color>[Colors.yellow, Colors.deepOrange.shade900],
            tileMode: TileMode.mirror,
          ).createShader(bounds);
        },
        child: platformViewWidget());
  }
}
