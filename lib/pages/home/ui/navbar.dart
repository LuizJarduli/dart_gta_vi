import 'package:dart_gta_vi/components/divider.dart';
import 'package:dart_gta_vi/pages/home/ui/vi_logo.dart';
import 'package:dart_gta_vi/theme/fonts.dart';
import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Navbar extends StatelessComponent {
  const Navbar({super.key});

  final String rockstarUrlMain = 'https://www.rockstargames.com/VI';

  @override
  Component build(BuildContext context) {
    return nav(classes: 'navbar-wrapper', [
      a(
        href: rockstarUrlMain,
        [ViLogo()],
      ),
      div(classes: 'navbar-title', [
        Divider.vertical(width: .pixels(2), height: .pixels(17), color: Color('#988bd0')),
        p([.text('Só em leonida')]),
      ]),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('nav', [
      css('&').styles(opacity: 1, visibility: .inherit),
      css('&.navbar-wrapper', [
        css('&').styles(
          display: .flex,
          position: Position.fixed(left: .pixels(0), right: .pixels(0), top: .pixels(0)),
          zIndex: ZIndex(10),
          width: .vw(100),
          padding: .all(.expression('min(calc(10vw / 3.5), calc(2560px * .1 / 3.5))')),
          overflow: .visible,
          pointerEvents: .none,
          transform: .translate(x: .pixels(0), y: Unit.pixels(0)),
          justifyContent: .spaceBetween,
          alignItems: .center,
          justifyItems: .center,
          gap: .column(.pixels(6.75)),
          raw: {'will-change': 'transform, opacity'},
        ),
        css('a', [
          css('&').styles(
            display: .flex,
            width: .expression('min(calc(12vw / 3.5), calc(2560px * .12 / 3.5))'),
            height: .expression('min(calc(12vw / 3.5), calc(2560px * .12 / 3.5))'),
            outline: Outline(
              color: Color('#0000'),
              style: .solid,
              width: OutlineWidth(.expression('min(calc(1vw / 3.5), calc(2560px * .01 / 3.5))')),
            ),
            cursor: .pointer,
            pointerEvents: .auto,
            justifyContent: .center,
            alignItems: .center,
            color: Colors.white,
          ),
        ]),
        css('.navbar-title', [
          css('&').styles(
            display: .flex,
            height: .auto,
            justifyContent: .start,
            alignItems: .center,
            gap: .column(.pixels(6.74)),
            flex: .grow(1),
            alignSelf: .center,
          ),
          css.media(.screen(maxWidth: .pixels(768)), [
            css('&').styles(display: .none),
          ]),
          css('& > p').styles(
            color: Color('#d9d1f6'),
            fontFamily: .list([FontFamily(ArtDecoFamilyFont.artDecoMedium), FontFamilies.sansSerif]),
            fontSize: .pixels(15),
            fontWeight: .w500,
            lineHeight: .pixels(19),
          ),
        ]),
      ]),
    ]),
  ];
}
