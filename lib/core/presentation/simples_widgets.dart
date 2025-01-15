import 'dart:io';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../app/global_exports.dart';

class SimplesSvg extends StatelessWidget {
  final LoadFrom loadFrom;
  final String load;
  final SimplesSvgOptions? options;
  const SimplesSvg(
      {super.key, required this.loadFrom, required this.load, this.options});
  @override
  Widget build(BuildContext context) {
    if (loadFrom == LoadFrom.asset) {
      return SvgPicture.asset(load);
    }
    if (loadFrom == LoadFrom.network) {
      return SvgPicture.network(load);
    }
    if (loadFrom == LoadFrom.file) {
      return SvgPicture.file(File(load));
    }
    if (loadFrom == LoadFrom.string) {
      return SvgPicture.string(load);
    }

    return Container();
  }
}

enum LoadFrom { asset, network, file, string }

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

class SimplesContainer extends StatelessWidget {
  final Widget child;
  const SimplesContainer(
      {required this.child, super.key, this.isContrast = false});
  final bool isContrast;
  @override
  Widget build(BuildContext context) {
    Color borderColor = Color.fromRGBO(255, 255, 255, 0.13);
    Color gradient1;
    Color gradient2;
    if (isDarkMode(context)) {
      if (!this.isContrast) {
        borderColor = Color.fromRGBO(255, 255, 255, 0.13);
        gradient1 = Color.fromRGBO(241, 239, 239, 0.149);
        gradient2 = Color.fromRGBO(224, 224, 224, 0.047);
      } else {
        borderColor = Color.fromRGBO(0, 0, 0, 0.13);
        gradient1 = Color.fromRGBO(105, 105, 105, 0.8);
        gradient2 = Color.fromRGBO(0, 0, 0, 0.6);
      }
    } else {
      if (!this.isContrast) {
        borderColor = Color.fromRGBO(0, 0, 0, 0.13);
        gradient1 = Color.fromRGBO(0, 0, 0, 0.15);
        gradient2 = Color.fromRGBO(0, 0, 0, 0.05);
      } else {
        borderColor = Color.fromRGBO(255, 255, 255, 0.13);
        gradient1 = Color.fromRGBO(119, 181, 240, 0.8);
        gradient2 = Color.fromRGBO(74, 62, 243, 0.6);
      }
    }

    return ClipRRect(
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 4, sigmaY: 4),
        child: Container(
            // padding: EdgeInsets.only(top: 4, bottom: 4),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: borderColor),
                // (Get.isDarkMode)
                //     ? const Color.fromRGBO(255, 255, 255, 0.13)
                //     : const Color.fromRGBO(0, 0, 0, 0.13)),
                gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      gradient1,
                      gradient2
                      // (Get.isDarkMode)
                      //     ? const Color.fromRGBO(255, 255, 255, 0.15)
                      //     : const Color.fromRGBO(0, 0, 0, 0.15),
                      // (Get.isDarkMode)
                      //     ? const Color.fromRGBO(255, 255, 255, 0.05)
                      //     : const Color.fromRGBO(0, 0, 0, 0.05),
                    ])),
            child: child),
      ),
    );
  }
}

class SimplesTextMenu extends StatelessWidget {
  final dynamic text;
  const SimplesTextMenu(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: (isDarkMode(context)) ? Colors.white : Colors.black),
    );
  }
}

class SimplesClickable extends StatelessWidget {
  final Widget child;
  final VoidCallback onPressed;
  const SimplesClickable(
      {required this.child, required this.onPressed, super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        alignment: Alignment.center,
        overlayColor: Colors.cyan,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
      child: Container(margin: const EdgeInsets.all(2), child: child),
    );
  }
}

class LabelledContainer extends StatelessWidget {
  const LabelledContainer(
      {required this.title, required this.child, super.key});
  final Widget child;
  final Widget title;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(16),
          margin: EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child: child,
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Container(
              margin:
                  EdgeInsets.only(left: (context.size?.width ?? 0.0) * 0.01),
              alignment: Alignment.topLeft,
              child: SimplesContainer(child: title)),
        )
      ],
    );
  }
}

class SimplesStyle {
  static TextStyle h6Text(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, 14.0),
        fontWeight: FontWeight.normal,
        color: getFontColor(context),
      );
  static TextStyle h5Text(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, 16.0),
        fontWeight: FontWeight.bold,
        color: getFontColor(context),
      );

  static TextStyle h4Text(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, 18.0),
        fontWeight: FontWeight.bold,
        color: getFontColor(context),
      );

  static TextStyle h3Text(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, 20.0),
        fontWeight: FontWeight.bold,
        color: getFontColor(context),
      );

  static TextStyle h2Text(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, 24.0),
        fontWeight: FontWeight.bold,
        color: getFontColor(context),
      );

  static TextStyle h1Text(BuildContext context) => TextStyle(
        fontSize: getResponsiveFontSize(context, 32.0),
        fontWeight: FontWeight.bold,
        color: getFontColor(context),
      );
}

/// *
/// Simple widget Helper functions
///
bool isDarkMode(BuildContext context) {
  return Theme.of(context).brightness == Brightness.dark;
}

double getResponsiveFontSize(BuildContext context, double baseFontSize) {
  double screenWidth = MediaQuery.of(context).size.width;
  if (screenWidth < 600) {
    return baseFontSize * 0.9;
  } else if (screenWidth < 1200) {
    return baseFontSize;
  } else {
    return baseFontSize * 1.2;
  }
}

Color getFontColor(BuildContext context) =>
    (isDarkMode(context)) ? ligthThemeFontColor : darkThemeFontColor;
