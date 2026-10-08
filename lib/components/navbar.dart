import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

class Navbar extends StatelessComponent {
  const Navbar({super.key});

  final String rockstarUrlMain = 'https://www.rockstargames.com/VI';

  @override
  Component build(BuildContext context) {
    return nav(classes: 'wrapper', [
      a(
        href: rockstarUrlMain,
        [
          svg(
            width: .expression('min(calc(9vw / 3.5), calc(2560px * .09 / 3.5))'),
            height: .percent(100),
            viewBox: '0 0 46 35',
            [
              path(d: 'M46.2661 0.800781H34.7236V34.4008H46.2661V0.800781Z', fill: .currentColor, []),
              path(
                d: 'M33.9162 0.800781L17.3358 34.4008L0.776855 0.800781H12.3139L17.3332 11.5445L22.3766 0.800781H33.9162Z',
                fill: .currentColor,
                [],
              ),
              path(
                d: 'M46.9194 1.43945C47.0056 1.43945 47.0488 1.47492 47.0488 1.54585C47.0488 1.60496 47.0155 1.63872 46.9489 1.64712L47.0573 1.81154H46.9939L46.8905 1.65148H46.828V1.81154H46.769V1.43945H46.9192H46.9194ZM46.8959 1.60465C46.9317 1.60465 46.9565 1.59999 46.9698 1.59065C46.9831 1.58132 46.9898 1.56561 46.9898 1.54336C46.9898 1.50541 46.9631 1.48628 46.9099 1.48628H46.8282V1.60465H46.8959Z',
                fill: .currentColor,
                [],
              ),
              path(
                d: 'd="M46.8961 1.94775C46.7154 1.94775 46.5684 1.80355 46.5684 1.62622C46.5684 1.44889 46.7154 1.30469 46.8961 1.30469C47.0769 1.30469 47.2239 1.44889 47.2239 1.62622C47.2239 1.80355 47.0769 1.94775 46.8961 1.94775ZM46.8961 1.35509C46.7437 1.35509 46.6196 1.47673 46.6196 1.62638C46.6196 1.77602 46.7436 1.89767 46.8961 1.89767C47.0487 1.89767 47.1727 1.77602 47.1727 1.62638C47.1727 1.47673 47.0487 1.35509 46.8961 1.35509Z',
                fill: .currentColor,
                [],
              ),
            ],
          ),
        ],
      ),
    ]);
  }

  @css
  static List<StyleRule> get styles => [
    css('nav', [
      css('&').styles(opacity: 1, visibility: .inherit),
      css('&.wrapper').styles(
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
        raw: {'will-change': 'transform, opacity;'},
      ),
      css('a', [
        css('&').styles(
          width: .expression('min(calc(12vw / 3.5), calc(2560px * .12 / 3.5))'),
          height: .expression('min(calc(12vw / 3.5), calc(2560px * .12 / 3.5))'),
          outline: Outline(
            color: Color('#0000'),
            style: .solid,
            width: OutlineWidth(.expression('min(calc(1vw / 3.5), calc(2560px * .01 / 3.5))')),
          ),
          cursor: .pointer,
          pointerEvents: .auto,
          color: Colors.white,
        ),
      ]),
    ]),
  ];
}
