import 'package:jaspr/dom.dart';

final class ArtDecoFamilyFont {
  static const String artDecoMedium = 'ArtDeco Medium';
  static const String artDecoRegular = 'ArtDeco Regular';
  static const String artDecoCondensedHeavy = 'ArtDeco Condensed Heavy';
  static const String artDecoCondensedBold = 'ArtDeco Condensed Bold';
  static const String artDecoBold = 'ArtDeco Bold';
}

final class AppFonts {
  static List<StyleRule> get fonts => [
    css.fontFace(family: ArtDecoFamilyFont.artDecoMedium, url: '/assets/fonts/GTAArtDeco_Medium-s.p.0doalxf~3yos.woff'),
    css.fontFace(
      family: ArtDecoFamilyFont.artDecoRegular,
      url: '/assets/fonts/GTAArtDeco_Regular-s.p.0imfurdf3f-dg.woff',
    ),
    css.fontFace(
      family: ArtDecoFamilyFont.artDecoCondensedHeavy,
      url: '/assets/fonts/GTAArtDeco_CondensedHeavy-s.p.0ggau.atpfhca.woff',
    ),
    css.fontFace(
      family: ArtDecoFamilyFont.artDecoCondensedBold,
      url: '/assets/fonts/GTAArtDeco_CondensedBold-s.p.0t9aeh4uj8z9q.woff',
    ),
    css.fontFace(family: ArtDecoFamilyFont.artDecoBold, url: '/assets/fonts/GTAArtDeco_Bold-s.p.0yn5.wm39fg.l.woff'),
  ];
}
