import 'package:web_portfolio/index_main.dart';

// var customRoutes = <String, WidgetBuilder>{
//   '/homePage': (context) => HomePage(), //! learn more about required title
//   '/softPage': (context) => SoftPage(),
//   '/mechPage': (context) => MechPage(),
//   '/otherPage': (context) => OtherPage(),
// };

// custom animations for pushing pages
Route<dynamic>? generateCustomRoute(RouteSettings settings) {
  if (settings.name == "/") {
    return PageRouteBuilder(
        settings:
            settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
        pageBuilder: (_, __, ___) => HomePage(),
        transitionsBuilder: (_, a, __, c) =>
            FadeTransition(opacity: a, child: c));
  }
  if (settings.name == "/softPage") {
    return PageRouteBuilder(
        settings:
            settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
        pageBuilder: (_, __, ___) => SoftPage(),
        transitionsBuilder: (_, a, __, c) =>
            FadeTransition(opacity: a, child: c));
  }
  if (settings.name == "/mechPage") {
    return PageRouteBuilder(
        settings:
            settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
        pageBuilder: (_, __, ___) => MechPage(),
        transitionsBuilder: (_, a, __, c) =>
            FadeTransition(opacity: a, child: c));
  }
  if (settings.name == "/otherPage") {
    return PageRouteBuilder(
        settings:
            settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
        pageBuilder: (_, __, ___) => OtherPage(),
        transitionsBuilder: (_, a, __, c) =>
            FadeTransition(opacity: a, child: c));
  }
  // Unknown route
  return MaterialPageRoute(builder: (_) => UnknownPage()); // ! add unknown page
}
