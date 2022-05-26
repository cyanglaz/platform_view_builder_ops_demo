import 'package:flutter/material.dart';
import 'demo_page.dart';

class PhysicalShapeDemo extends DemoPage {
  const PhysicalShapeDemo({Key? key}) : super('Physical Shape demo', key: key);

  @override
  Widget topWidget() {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: PhysicalShape(
          elevation: 50.0,
          clipper: ShapeBorderClipper(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          color: Colors.blue,
          child: regularWidget()),
    );
  }

  @override
  Widget bottomWidget() {
    return Padding(
      padding: const EdgeInsets.all(50.0),
      child: PhysicalShape(
          elevation: 50.0,
          clipper: ShapeBorderClipper(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
          color: Colors.blue,
          child: platformViewWidget()),
    );
  }
}
