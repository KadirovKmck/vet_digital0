import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/biz_jonundo.svg
  SvgGenImage get bizJonundo =>
      const SvgGenImage('assets/icons/biz_jonundo.svg');

  /// File path: assets/icons/bodo_mal.svg
  SvgGenImage get bodoMal => const SvgGenImage('assets/icons/bodo_mal.svg');

  /// File path: assets/icons/briefcase.svg
  SvgGenImage get briefcase => const SvgGenImage('assets/icons/briefcase.svg');

  /// File path: assets/icons/jilkilar.svg
  SvgGenImage get jilkilar => const SvgGenImage('assets/icons/jilkilar.svg');

  /// File path: assets/icons/koy_echkiler.svg
  SvgGenImage get koyEchkiler =>
      const SvgGenImage('assets/icons/koy_echkiler.svg');

  /// File path: assets/icons/main_logo.png
  AssetGenImage get mainLogo => const AssetGenImage('assets/icons/logo1.png');

  /// File path: assets/icons/news.svg
  SvgGenImage get news => const SvgGenImage('assets/icons/news.svg');

  /// File path: assets/icons/ooruu.svg
  SvgGenImage get ooruu => const SvgGenImage('assets/icons/ooruu.svg');

  /// File path: assets/icons/question.svg
  SvgGenImage get question => const SvgGenImage('assets/icons/question.svg');

  /// File path: assets/icons/took.svg
  SvgGenImage get took => const SvgGenImage('assets/icons/took.svg');

  /// File path: assets/icons/toyut.svg
  SvgGenImage get toyut => const SvgGenImage('assets/icons/toyut.svg');

  /// File path: assets/icons/uruktandiruu.svg
  SvgGenImage get uruktandiruu =>
      const SvgGenImage('assets/icons/uruktandiruu.svg');
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bodomal.png
  AssetGenImage get bodomal => const AssetGenImage('assets/images/bodomal.png');

  /// File path: assets/images/category_image.png
  AssetGenImage get categoryImage =>
      const AssetGenImage('assets/images/category_image.png');

  /// File path: assets/images/error.png
  AssetGenImage get error => const AssetGenImage('assets/images/error.png');

  /// File path: assets/images/jilki.png
  AssetGenImage get jilki => const AssetGenImage('assets/images/jylki.png');

  /// File path: assets/images/koy_echkiler.png
  AssetGenImage get koyEchkiler =>
      const AssetGenImage('assets/images/koy_echkiler.png');

  /// File path: assets/images/took.png
  AssetGenImage get took => const AssetGenImage('assets/images/took.png');

  /// File path: assets/images/torpok.png
  AssetGenImage get torpok => const AssetGenImage('assets/images/torpok.png');

  /// File path: assets/images/veterinar_image.png
  AssetGenImage get veterinarImage =>
      const AssetGenImage('assets/images/bro2.png');
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
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

  String get path => _assetName;

  String get keyName => _assetName;
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    Color? color,
    BlendMode colorBlendMode = BlendMode.srcIn,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    Clip clipBehavior = Clip.hardEdge,
    bool cacheColorFilter = false,
    SvgTheme? theme,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      color: color,
      colorBlendMode: colorBlendMode,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
      theme: theme,
    );
  }

  String get path => _assetName;
}
