import 'package:flutter/material.dart';
import 'demo_page.dart';

class ColorFilterDemo extends DemoPage {
  const ColorFilterDemo({Key? key}) : super('Color filter demo', key: key);

  @override
  Widget topWidget() {
    return ColorFiltered(
      colorFilter: const ColorFilter.mode(Colors.red, BlendMode.color),
      child: regularWidget(),
    );
  }

  @override
  Widget bottomWidget() {
    return ColorFiltered(
      colorFilter: const ColorFilter.mode(Colors.red, BlendMode.color),
      child: platformViewWidget(),
    );
  }
}
