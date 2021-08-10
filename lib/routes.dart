import 'package:web_portfolio/index_main.dart';

// var customRoutes = <String, WidgetBuilder>{
//   '/homePage': (context) => HomePage(),
//   '/softPage': (context) => SoftPage(),
//   '/mechPage': (context) => MechPage(),
//   '/otherPage': (context) => OtherPage(),
// };

// custom animations for pushing pages
Route<dynamic>? generateCustomRoute(RouteSettings settings) {
  // ! fade in not working for '/' path
  if (settings.name == '/') {
    return PageRouteBuilder(
        settings:
            settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
        pageBuilder: (_, __, ___) => HomePage(),
        transitionsBuilder: (_, a, __, c) =>
            FadeTransition(opacity: a, child: c));
  }
  if (settings.name == "/software-projects") {
    return PageRouteBuilder(
        settings:
            settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
        pageBuilder: (_, __, ___) => SoftPage(),
        transitionsBuilder: (_, a, __, c) =>
            FadeTransition(opacity: a, child: c));
  }
  if (settings.name == "/mechanical-projects") {
    return PageRouteBuilder(
        settings:
            settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
        pageBuilder: (_, __, ___) => MechPage(),
        transitionsBuilder: (_, a, __, c) =>
            FadeTransition(opacity: a, child: c));
  }
  if (settings.name == "/other-projects") {
    return PageRouteBuilder(
        settings:
            settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
        pageBuilder: (_, __, ___) => OtherPage(),
        transitionsBuilder: (_, a, __, c) =>
            FadeTransition(opacity: a, child: c));
  }
  if (settings.name == "/test") {
    return PageRouteBuilder(
        settings:
            settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
        pageBuilder: (_, __, ___) => TestPage(),
        transitionsBuilder: (_, a, __, c) =>
            FadeTransition(opacity: a, child: c));
  }
  // 404: Page not found
  //// return MaterialPageRoute(builder: (_) => UnknownPage());
  return PageRouteBuilder(
      settings:
          settings, // Pass this to make popUntil(), pushNamedAndRemoveUntil(), works
      pageBuilder: (_, __, ___) => UnknownPage(),
      transitionsBuilder: (_, a, __, c) =>
          FadeTransition(opacity: a, child: c));
}
