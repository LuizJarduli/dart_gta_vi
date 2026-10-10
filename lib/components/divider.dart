import 'package:jaspr/dom.dart';
import 'package:jaspr/jaspr.dart';

enum DividerOrientation {
  vertical,
  horizontal;

  bool get isVertical => this == vertical;
  bool get isHorizontal => this == horizontal;
}

class Divider extends StatelessComponent {
  const Divider({
    required this.width,
    required this.height,
    required this.orientation,
    this.color = const Color('#000'),
  });

  const Divider.horizontal({
    required this.width,
    required this.height,
    required this.color,
  }) : orientation = DividerOrientation.horizontal;

  const Divider.vertical({
    required this.width,
    required this.height,
    required this.color,
  }) : orientation = DividerOrientation.vertical;

  final Unit width;

  final Unit height;

  final DividerOrientation orientation;

  final Color color;

  @override
  Component build(BuildContext context) {
    return div(
      classes: 'divider',
      styles: Styles(
        width: orientation.isVertical ? width : height,
        height: orientation.isVertical ? height : width,
        backgroundColor: color,
      ),
      [],
    );
  }

  @css
  static List<StyleRule> get styles => [
    css('.divider', [
      css('&').styles(
        width: .pixels(2),
        height: .pixels(2),
        backgroundColor: Color('#000'),
      ),
    ]),
  ];
}
