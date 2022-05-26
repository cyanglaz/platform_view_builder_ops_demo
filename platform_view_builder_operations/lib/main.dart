import 'package:flutter/material.dart';
import 'package:platform_view_builder_operations/shader_mask_demo.dart';

import 'backdrop_filter_demo.dart';
import 'color_filter_demo.dart';
import 'demo_page.dart';
import 'physical_shape_demo.dart';

final List<DemoPage> _allPages = <DemoPage>[
  const ColorFilterDemo(),
  const ShaderMaskDemo(),
  const PhysicalShapeDemo(),
  const BackdropFilterDemo(),
];

void main() {
  runApp(const MaterialApp(home: PlatformViewBuilderOperationDemoApp()));
}

/// MapsDemo is the Main Application.
class PlatformViewBuilderOperationDemoApp extends StatelessWidget {
  /// Default Constructor
  const PlatformViewBuilderOperationDemoApp({Key? key}) : super(key: key);

  void _pushPage(BuildContext context, DemoPage page) {
    Navigator.of(context).push(MaterialPageRoute<void>(
        builder: (_) => Scaffold(
              appBar: AppBar(title: Text(page.title)),
              body: page,
            )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('PlatformView examples')),
      body: ListView.builder(
        itemCount: _allPages.length,
        itemBuilder: (_, int index) => ListTile(
          title: Text(_allPages[index].title),
          onTap: () => _pushPage(context, _allPages[index]),
        ),
      ),
    );
  }
}
