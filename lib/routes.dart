import 'package:web_portfolio/index_main.dart';

var customRoutes = <String, WidgetBuilder>{
  '/home': (context) => HomePage(), //! learn more about required title
  '/softPage': (context) => SoftPage(),
  '/mechPage': (context) => MechPage(),
  '/otherPage': (context) => OtherPage(),
};
