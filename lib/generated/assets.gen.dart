/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/eight.png
  AssetGenImage get eight => const AssetGenImage('assets/images/eight.png');

  /// File path: assets/images/eleven.png
  AssetGenImage get eleven => const AssetGenImage('assets/images/eleven.png');

  /// File path: assets/images/five.png
  AssetGenImage get five => const AssetGenImage('assets/images/five.png');

  /// File path: assets/images/four.png
  AssetGenImage get four => const AssetGenImage('assets/images/four.png');

  /// File path: assets/images/fourteen.png
  AssetGenImage get fourteen =>
      const AssetGenImage('assets/images/fourteen.png');

  /// File path: assets/images/nine.png
  AssetGenImage get nine => const AssetGenImage('assets/images/nine.png');

  /// File path: assets/images/one.png
  AssetGenImage get one => const AssetGenImage('assets/images/one.png');

  /// File path: assets/images/seven.png
  AssetGenImage get seven => const AssetGenImage('assets/images/seven.png');

  /// File path: assets/images/six.png
  AssetGenImage get six => const AssetGenImage('assets/images/six.png');

  /// File path: assets/images/thirteen.png
  AssetGenImage get thirteen =>
      const AssetGenImage('assets/images/thirteen.png');

  /// File path: assets/images/three.png
  AssetGenImage get three => const AssetGenImage('assets/images/three.png');

  /// File path: assets/images/twelve.png
  AssetGenImage get twelve => const AssetGenImage('assets/images/twelve.png');

  /// File path: assets/images/two.png
  AssetGenImage get two => const AssetGenImage('assets/images/two.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        eight,
        eleven,
        five,
        four,
        fourteen,
        nine,
        one,
        seven,
        six,
        thirteen,
        three,
        twelve,
        two
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(this._assetName);

  final String _assetName;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
