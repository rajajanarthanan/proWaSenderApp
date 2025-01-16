import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SimplesSvg extends StatelessWidget {
  final LoadFrom loadFrom;
  final String load;
  final SimplesSvgOptions? options;
  final Uint8List? memoryBytes;
  const SimplesSvg(
      {super.key,
      required this.loadFrom,
      required this.load,
      this.options,
      this.memoryBytes});
  @override
  Widget build(BuildContext context) {
    if (loadFrom == LoadFrom.asset) {
      return SvgPicture.asset(load);
    }
    if (loadFrom == LoadFrom.network) {
      return SvgPicture.network(load);
    }
    if (loadFrom == LoadFrom.file) {
      if (kIsWeb) {
        return Text("Not supported - Use SVG from Memory");
      }
      if (!kIsWeb) {
        return SvgPicture.file(File(load));
      }
    }
    if (loadFrom == LoadFrom.string) {
      return SvgPicture.string(load);
    }

    if (loadFrom == LoadFrom.memory) {
      return SvgPicture.memory(memoryBytes!);
    }

    return Container();
  }
}

enum LoadFrom { asset, network, file, string, memory }

class SimplesSvgOptions {
  final Map<String, String>? headers;
  final double? width;
  final double? height;
  final BoxFit fit;
  final AlignmentGeometry alignment;
  final bool matchTextDirection;
  final bool allowDrawingOutsideViewBox;
  final Widget Function(BuildContext)? placeholderBuilder;
  final ColorFilter? colorFilter;
  final Color? color;
  final BlendMode colorBlendMode;
  final String? semanticsLabel;
  final bool excludeFromSemantics;
  final Clip clipBehavior;
  final Widget Function(BuildContext, Object, StackTrace)? errorBuilder;
  final bool cacheColorFilter;
  final SvgTheme? theme;

  const SimplesSvgOptions(
      {this.headers,
      this.width,
      this.colorFilter,
      this.height,
      this.placeholderBuilder,
      this.color,
      this.errorBuilder,
      this.semanticsLabel,
      this.theme,
      this.fit = BoxFit.contain,
      this.alignment = Alignment.center,
      this.matchTextDirection = false,
      this.excludeFromSemantics = false,
      this.cacheColorFilter = false,
      this.clipBehavior = Clip.hardEdge,
      this.colorBlendMode = BlendMode.srcIn,
      this.allowDrawingOutsideViewBox = false});
}
