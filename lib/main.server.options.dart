// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:dart_gta_vi/components/counter.dart' as _counter;
import 'package:dart_gta_vi/components/navbar.dart' as _navbar;
import 'package:dart_gta_vi/pages/about.dart' as _about;
import 'package:dart_gta_vi/theme/theme.dart' as _theme;
import 'package:dart_gta_vi/app.dart' as _app;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  clients: {_app.App: ClientTarget<_app.App>('app')},
  styles: () => [
    ..._theme.styles,
    ..._app.AppState.styles,
    ..._counter.CounterState.styles,
    ..._navbar.Navbar.styles,
    ..._about.About.styles,
  ],
);
